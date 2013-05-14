.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BgpControlCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedCommInfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final DEBUG_SIM_STATES:Z = false

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final KEYGUARD_MONITOR_TEST:I = 0x3060601

.field static final LOW_BATTERY_THRESHOLD:I = 0x14

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BGP_STATE_CHANGED:I = 0x19b

.field private static final MSG_CARD_REMOVED:I = 0x1

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CARRIER_INFO_UPDATE_SUB:I = 0x137

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field protected static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_MISSED_COMM_INFO_RETRY:I = 0x192

.field private static final MSG_MISSED_COMM_INFO_START:I = 0x193

.field private static final MSG_MISSED_COMM_INFO_UPDATE:I = 0x191

.field private static final MSG_PCK_BLOCKED:I = 0x0

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field protected static final MSG_USER_CHANGED:I = 0x136

.field private static final QUERY_RETRY_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field private static final TOKEN_QUERY_CALL:I = 0x1

.field private static final TOKEN_QUERY_EMAIL:I = 0x2

.field private static final TOKEN_QUERY_MESSAGE:I = 0x4

.field private static final TOKEN_QUERY_VOICEMAIL:I = 0x8


# instance fields
.field private cardRemoved:Z

.field private mBGPAlbumName:Ljava/lang/String;

.field private mBGPArtistName:Ljava/lang/String;

.field private mBGPServiceLaunched:Z

.field private mBGPStatus:Ljava/lang/String;

.field private mBGPTrackName:Ljava/lang/String;

.field private mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

.field private mBgpControlCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BgpControlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBgpControlHandler:Landroid/os/Handler;

.field private mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

.field private mClockVisible:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTimeZone:Ljava/lang/String;

.field private mDeviceProvisioned:Z

.field private mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

.field private mMissedCallCount:I

.field private mMissedCallRetryCount:I

.field private mMissedCommHandler:Landroid/os/Handler;

.field private mMissedCommInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedCommInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedEmailRetryCount:I

.field private mMissedMsgRetryCount:I

.field private mMissedVoiceMailRetryCount:I

.field private mPackageDataReceiver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;

.field private mPhoneState:I

.field private mReturnedPauseCmd:Z

.field private mRingMode:I

.field private mSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSkyUsimCardType:I

.field private mTelephonyPlmn:[Ljava/lang/CharSequence;

.field private mTelephonySpn:[Ljava/lang/CharSequence;

.field private mTestFlag:I

.field private mTimeZoneChanged:Z

.field private mUnreadEmailCount:I

.field private mUnreadMsgCount:I

.field private mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

.field private mUnreadVoiceMailCount:I

.field private mUsimPersoHandler:Landroid/os/Handler;

.field private mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

.field private persoPPKBlocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 119
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 130
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    .line 131
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    .line 152
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkyUsimCardType:I

    .line 161
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->persoPPKBlocked:Z

    .line 170
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->cardRemoved:Z

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentTimeZone:Ljava/lang/String;

    .line 182
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTimeZoneChanged:Z

    .line 1305
    iput-object v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    .line 1307
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommInfoCallbacks:Ljava/util/ArrayList;

    .line 1383
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    .line 1384
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    .line 1385
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    .line 1386
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I

    .line 1388
    iput-object v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    .line 1389
    iput-object v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    .line 1390
    iput-object v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    .line 1391
    iput-object v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    .line 1393
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    .line 1394
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    .line 1395
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    .line 1396
    iput v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    .line 2344
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPServiceLaunched:Z

    .line 2345
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReturnedPauseCmd:Z

    .line 2346
    const-string v5, "unknown"

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    .line 2347
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPArtistName:Ljava/lang/String;

    .line 2348
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPAlbumName:Ljava/lang/String;

    .line 2349
    const-string v5, ""

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPTrackName:Ljava/lang/String;

    .line 2350
    iput-object v10, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlHandler:Landroid/os/Handler;

    .line 2352
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlCallbacks:Ljava/util/ArrayList;

    .line 2472
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTestFlag:I

    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 303
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 435
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "device_provisioned"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_fe

    move v5, v6

    :goto_83
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 440
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v5, :cond_c9

    .line 441
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 454
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "device_provisioned"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 460
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "device_provisioned"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_100

    move v4, v6

    .line 462
    .local v4, provisioned:Z
    :goto_b2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v4, v5, :cond_c9

    .line 463
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 464
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v5, :cond_c9

    .line 465
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x134

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    .end local v4           #provisioned:Z
    :cond_c9
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v8, 0x64

    invoke-direct {v5, v6, v8, v7, v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 475
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 477
    .local v2, numPhones:I
    new-array v5, v2, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    .line 478
    new-array v5, v2, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    .line 479
    new-array v5, v2, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 480
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e7
    if-ge v1, v2, :cond_102

    .line 481
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v1

    .line 482
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aput-object v10, v5, v1

    .line 483
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v6, v5, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    .end local v1           #i:I
    .end local v2           #numPhones:I
    :cond_fe
    move v5, v7

    .line 435
    goto :goto_83

    :cond_100
    move v4, v7

    .line 460
    goto :goto_b2

    .line 487
    .restart local v1       #i:I
    .restart local v2       #numPhones:I
    :cond_102
    new-instance v5, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p0}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    .line 493
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    .line 523
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlHandler:Landroid/os/Handler;

    .line 538
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 539
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v5, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v5, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v5, "com.pantech.app.music.playbackcomplete"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 694
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 695
    .local v3, packageFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v5, "package"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 698
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;

    invoke-direct {v5, p0, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPackageDataReceiver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;

    .line 699
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPackageDataReceiver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCommInfoRetry(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startMissedCommunicationObserver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleBGPStateUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTimeZoneChanged:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTimeZoneChanged:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(I)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReturnedPauseCmd:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPServiceLaunched:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryCall()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    return p1
.end method

.method static synthetic access$3004(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryEmail()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    return p1
.end method

.method static synthetic access$3304(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryMessage()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    return p1
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    return p1
.end method

.method static synthetic access$3604(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryVoiceMail()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I

    return p1
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    return p1
.end method

.method static synthetic access$3904(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkyUsimCardType:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMissedCommInfoUpdate(II)V

    return-void
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "intent"

    .prologue
    .line 883
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 884
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 904
    .end local v0           #plmn:Ljava/lang/String;
    :goto_11
    return-object v0

    .line 901
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 904
    .end local v0           #plmn:Ljava/lang/String;
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "intent"

    .prologue
    .line 920
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 921
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 926
    .end local v0           #spn:Ljava/lang/String;
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private handleBGPStateUpdate(I)V
    .registers 8
    .parameter "action"

    .prologue
    .line 2379
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBGPStateUpdate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mBGPStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBGPServiceLaunched = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPServiceLaunched:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBGPArtistName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBGPAlbumName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBGPTrackName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPTrackName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/4 v1, 0x0

    .line 2390
    .local v1, status:Z
    packed-switch p1, :pswitch_data_9a

    .line 2407
    :goto_5e
    :pswitch_5e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5f
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8e

    .line 2408
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BgpControlCallback;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPArtistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPTrackName:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BgpControlCallback;->onBGPStateChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 2392
    .end local v0           #i:I
    :pswitch_7b
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    const-string v3, "play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 2393
    goto :goto_5e

    .line 2397
    :pswitch_84
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    const-string v3, "play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 2414
    :cond_8e
    return-void

    .line 2399
    :cond_8f
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    const-string v3, "play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 2400
    goto :goto_5e

    .line 2403
    :pswitch_98
    const/4 v1, 0x0

    goto :goto_5e

    .line 2390
    :pswitch_data_9a
    .packed-switch 0x1001
        :pswitch_7b
        :pswitch_84
        :pswitch_5e
        :pswitch_98
    .end packed-switch
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)V
    .registers 8
    .parameter "batteryStatus"

    .prologue
    .line 766
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery status: plugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 771
    .local v0, batteryUpdateInteresting:Z
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    .line 772
    if-eqz v0, :cond_5d

    .line 773
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 775
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v3

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 779
    .end local v1           #i:I
    :cond_5d
    return-void
.end method

.method private handleCarrierInfoUpdate(I)V
    .registers 6
    .parameter "subscription"

    .prologue
    .line 785
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 789
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 790
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 788
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 793
    :cond_5d
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 797
    :cond_71
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .registers 3

    .prologue
    .line 827
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 828
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    :cond_17
    return-void
.end method

.method private handleMissedCommInfoRetry(I)V
    .registers 7
    .parameter "whichInfo"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1346
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMissedCommInfoRetry which("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    packed-switch p1, :pswitch_data_b6

    .line 1381
    :cond_24
    :goto_24
    return-void

    .line 1350
    :pswitch_25
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    if-ge v0, v4, :cond_24

    .line 1353
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->onChange(Z)V

    goto :goto_24

    .line 1358
    :pswitch_49
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    if-ge v0, v4, :cond_24

    .line 1361
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->onChange(Z)V

    goto :goto_24

    .line 1366
    :pswitch_6d
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    if-ge v0, v4, :cond_24

    .line 1369
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->onChange(Z)V

    goto :goto_24

    .line 1374
    :pswitch_91
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    if-ge v0, v4, :cond_24

    .line 1377
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->onChange(Z)V

    goto/16 :goto_24

    .line 1348
    :pswitch_data_b6
    .packed-switch 0x701
        :pswitch_25
        :pswitch_49
        :pswitch_6d
        :pswitch_91
    .end packed-switch
.end method

.method private handleMissedCommInfoUpdate(II)V
    .registers 7
    .parameter "whichInfo"
    .parameter "count"

    .prologue
    .line 1338
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMissedCommInfoUpdate which("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") missed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 1341
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedCommInfoCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedCommInfoCallback;->onRefreshMissedCommInfo(II)V

    .line 1340
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1343
    :cond_3f
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V
    .registers 8
    .parameter "simArgs"

    .prologue
    .line 803
    iget-object v1, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 804
    .local v1, state:Lcom/android/internal/telephony/IccCard$State;
    iget v2, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->subscription:I

    .line 806
    .local v2, subscription:I
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSimStateChange: intentValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "state resolved to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subscription ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v3, :cond_7b

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v3, v3, v2

    if-eq v1, v3, :cond_7b

    .line 813
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v3, v2

    .line 814
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4f
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7b

    .line 816
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 817
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 814
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 819
    :cond_6f
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-interface {v3, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_6c

    .line 823
    .end local v0           #i:I
    :cond_7b
    return-void
.end method

.method private handleTimeUpdate()V
    .registers 3

    .prologue
    .line 753
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    :cond_17
    return-void
.end method

.method private static isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 875
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .registers 9
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 842
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 843
    .local v0, nowPluggedIn:Z
    invoke-static {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 844
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1a

    if-ne v0, v3, :cond_1a

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1a

    move v1, v3

    .line 849
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_15
    if-ne v2, v0, :cond_19

    if-eqz v1, :cond_1c

    .line 871
    :cond_19
    :goto_19
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1a
    move v1, v4

    .line 844
    goto :goto_15

    .line 854
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_1c
    if-eqz v0, :cond_24

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_19

    .line 859
    :cond_24
    if-nez v0, :cond_32

    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v5

    if-eqz v5, :cond_32

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_19

    .line 866
    :cond_32
    if-eqz v0, :cond_39

    iget v5, p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_19

    :cond_39
    move v3, v4

    .line 871
    goto :goto_19
.end method

.method private static isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z
    .registers 4
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 837
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .parameter "context"
    .parameter "classname"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2429
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2431
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 2432
    .local v2, runningServices:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v2, :cond_6f

    .line 2434
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2436
    .local v3, s:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2438
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " : null_pid("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v4, :cond_6b

    move v4, v5

    :goto_45
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "), started("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v4, :cond_6d

    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_6d

    .line 2446
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_6a
    return v5

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_6b
    move v4, v6

    .line 2438
    goto :goto_45

    :cond_6d
    move v5, v6

    .line 2441
    goto :goto_6a

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_6f
    move v5, v6

    .line 2446
    goto :goto_6a
.end method

.method private sendQueryCompleteMessage(III)V
    .registers 8
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2249
    packed-switch p2, :pswitch_data_8c

    .line 2265
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2266
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2268
    return-void

    .line 2251
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_f
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set missed call count...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2254
    :pswitch_2e
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set unread email count...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2257
    :pswitch_4d
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set unread message count...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2260
    :pswitch_6c
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set unread voicemail count...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2249
    :pswitch_data_8c
    .packed-switch 0x701
        :pswitch_f
        :pswitch_4d
        :pswitch_2e
        :pswitch_6c
    .end packed-switch
.end method

.method private sendQueryCompleteMessageDelayed(IIIJ)V
    .registers 9
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "delayMillis"

    .prologue
    .line 2277
    packed-switch p2, :pswitch_data_30

    .line 2292
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2293
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2294
    return-void

    .line 2279
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_f
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "error...fail to get unread call count..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2282
    :pswitch_17
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "error...fail to get unread email count..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2285
    :pswitch_1f
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "error...fail to get unread messages count..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2288
    :pswitch_27
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "error...fail to get unread voice mails count..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2277
    nop

    :pswitch_data_30
    .packed-switch 0x701
        :pswitch_f
        :pswitch_1f
        :pswitch_17
        :pswitch_27
    .end packed-switch
.end method

.method private startMissedCommunicationObserver()V
    .registers 4

    .prologue
    .line 1415
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "start missed communication observers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->stopMissedCommunicationObserver()V

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    if-nez v0, :cond_25

    .line 1420
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    .line 1421
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->startObserve()V

    .line 1423
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "call-log observer started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    if-nez v0, :cond_40

    .line 1427
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    .line 1428
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->startObserve()V

    .line 1430
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "e-mail observer started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    if-nez v0, :cond_5b

    .line 1434
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    .line 1435
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->startObserve()V

    .line 1437
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "message observer started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_5b
    return-void
.end method

.method private startQueryCall()V
    .registers 10

    .prologue
    .line 2045
    const-string v0, "KeyguardUpdateMonitor"

    const-string v7, "startQueryCall"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    if-eqz v0, :cond_22

    .line 2048
    const/4 v1, 0x1

    .line 2049
    .local v1, token:I
    const/4 v2, 0x0

    .line 2050
    .local v2, cookie:Ljava/lang/Object;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 2051
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 2052
    .local v4, projection:[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v0, "type=3 AND new=1"

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2053
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2054
    .local v6, selectionArgs:[Ljava/lang/String;
    const-string v8, "date DESC"

    .line 2055
    .local v8, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    .end local v1           #token:I
    .end local v2           #cookie:Ljava/lang/Object;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #orderBy:Ljava/lang/String;
    :cond_22
    return-void
.end method

.method private startQueryEmail()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2060
    const-string v0, "KeyguardUpdateMonitor"

    const-string v8, "startQueryEmail"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    if-eqz v0, :cond_27

    .line 2063
    const/4 v1, 0x2

    .line 2064
    .local v1, token:I
    const/4 v2, 0x0

    .line 2065
    .local v2, cookie:Ljava/lang/Object;
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2066
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 2067
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "type == ?"

    .line 2068
    .local v5, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 2069
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2070
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    .end local v1           #token:I
    .end local v2           #cookie:Ljava/lang/Object;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    :cond_27
    return-void
.end method

.method private startQueryMessage()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x4

    .line 2076
    const-string v0, "KeyguardUpdateMonitor"

    const-string v11, "startQueryMessage"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    if-eqz v0, :cond_29

    .line 2080
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v8

    .line 2081
    .local v8, operatorId:I
    const/4 v10, 0x4

    .line 2082
    .local v10, token:I
    const/4 v2, 0x0

    .line 2083
    .local v2, cookie:Ljava/lang/Object;
    sget-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->SMS_UNREAD_URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2084
    .local v3, uri:Landroid/net/Uri;
    if-eq v8, v12, :cond_20

    const/4 v0, 0x2

    if-eq v8, v0, :cond_20

    if-ne v8, v1, :cond_2a

    .line 2087
    :cond_20
    const/4 v4, 0x0

    .line 2088
    .local v4, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2089
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2090
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2091
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    .end local v2           #cookie:Ljava/lang/Object;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #operatorId:I
    .end local v10           #token:I
    :cond_29
    :goto_29
    return-void

    .line 2093
    .restart local v2       #cookie:Ljava/lang/Object;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #operatorId:I
    .restart local v10       #token:I
    :cond_2a
    const/16 v0, 0x8

    if-eq v8, v0, :cond_36

    const/16 v0, 0x10

    if-eq v8, v0, :cond_36

    const/16 v0, 0x20

    if-ne v8, v0, :cond_67

    .line 2096
    :cond_36
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v11, "_id"

    aput-object v11, v4, v0

    .line 2097
    .restart local v4       #projection:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2098
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "sms"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    const-string v0, "type = 1 and read = 0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    const-string v0, ";"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    const-string v0, "mms"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    const-string v0, "msg_box = 1 and read = 0 and m_type != 134"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2104
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2105
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2106
    .restart local v7       #orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 2109
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :cond_67
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startQueryMessage err operatorId:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private startQueryVoiceMail()V
    .registers 10

    .prologue
    .line 2115
    const-string v0, "KeyguardUpdateMonitor"

    const-string v5, "startQueryVoiceMail"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    if-eqz v0, :cond_21

    .line 2118
    const/16 v1, 0x8

    .line 2119
    .local v1, token:I
    const/4 v2, 0x0

    .line 2120
    .local v2, cookie:Ljava/lang/Object;
    const-string v0, "content://vvm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2121
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->VOICEMAIL_UNREAD_PROJECTION:[Ljava/lang/String;

    .line 2122
    .local v4, projection:[Ljava/lang/String;
    const-string v8, "(( _size != 0 AND type = \'voice\' ) OR ( type != \'voice\' )) AND heard = 0 AND update_state = 0"

    .line 2123
    .local v8, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2124
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2125
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadQueryHandler:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;

    const-string v5, "(( _size != 0 AND type = \'voice\' ) OR ( type != \'voice\' )) AND heard = 0 AND update_state = 0"

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    .end local v1           #token:I
    .end local v2           #cookie:Ljava/lang/Object;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #selection:Ljava/lang/String;
    :cond_21
    return-void
.end method

.method private stopMissedCommunicationObserver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1452
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stop missed communication observers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    if-eqz v0, :cond_13

    .line 1455
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->stopObserve()V

    .line 1456
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    .line 1459
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    if-eqz v0, :cond_1e

    .line 1460
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->stopObserve()V

    .line 1461
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    .line 1464
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    if-eqz v0, :cond_29

    .line 1465
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->stopObserve()V

    .line 1466
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    .line 1469
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    if-eqz v0, :cond_34

    .line 1470
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->stopObserve()V

    .line 1471
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    .line 1473
    :cond_34
    return-void
.end method


# virtual methods
.method public checkBGPServiceLaunched()Z
    .registers 3

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "com.pantech.app.music.common.MusicPlaybackService"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPServiceLaunched:Z

    .line 2421
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPServiceLaunched:Z

    if-nez v0, :cond_12

    .line 2422
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    .line 2425
    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPServiceLaunched:Z

    return v0
.end method

.method public clearFailedAttempts()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1194
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1195
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1196
    return-void
.end method

.method public getBGPAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getBGPArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getBGPPlayStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getBGPTracekName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBGPTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()I
    .registers 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    return v0
.end method

.method public getCurrentTimeZone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCurrentTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedAttempts()I
    .registers 2

    .prologue
    .line 1190
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .registers 3

    .prologue
    .line 1215
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMissedCallCount()I
    .registers 2

    .prologue
    .line 1399
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    return v0
.end method

.method public getNosimNoIDLE()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1240
    const/4 v0, 0x0

    .line 1241
    .local v0, missingSim:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 1245
    .local v1, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1268
    :cond_10
    :goto_10
    return v2

    .line 1248
    :cond_11
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_27

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSkyUsimCardType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    .line 1251
    const/4 v0, 0x1

    .line 1264
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimAbsentMenu()I

    move-result v3

    if-nez v3, :cond_10

    .line 1265
    const/4 v2, 0x1

    goto :goto_10

    .line 1254
    :cond_27
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_2d

    .line 1255
    const/4 v0, 0x1

    goto :goto_1d

    .line 1257
    :cond_2d
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_33

    .line 1258
    const/4 v0, 0x1

    goto :goto_1d

    .line 1260
    :cond_33
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v3, :cond_1d

    .line 1261
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public getPhoneState()I
    .registers 2

    .prologue
    .line 1207
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getReturnedPauseCmd()Z
    .registers 2

    .prologue
    .line 2450
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReturnedPauseCmd:Z

    return v0
.end method

.method public getSimAbsentMenu()I
    .registers 5

    .prologue
    .line 1232
    const/4 v0, 0x1

    .line 1234
    .local v0, nAbsent:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usim_menu_enter_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1236
    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .registers 2

    .prologue
    .line 1110
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSkyUsimCardType()I
    .registers 2

    .prologue
    .line 1226
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSkyUsimCardType:I

    return v0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1158
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1170
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUnreadEmailCount()I
    .registers 2

    .prologue
    .line 1407
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    return v0
.end method

.method public getUnreadMsgCount()I
    .registers 2

    .prologue
    .line 1403
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    return v0
.end method

.method public getUnreadVoiceMailCount()I
    .registers 2

    .prologue
    .line 1411
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I

    return v0
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .registers 3

    .prologue
    .line 704
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 705
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDevicePolicyManagerStateChanged()V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :cond_17
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .registers 4

    .prologue
    .line 716
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 717
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onDeviceProvisioned()V

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 719
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_29

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 722
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 724
    :cond_29
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "newState"

    .prologue
    .line 728
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 729
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    .line 735
    :cond_b
    :goto_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 730
    .end local v0           #i:I
    :cond_24
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 731
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_b

    .line 732
    :cond_30
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 733
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_b

    .line 738
    .restart local v0       #i:I
    :cond_3c
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 742
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    .line 743
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 744
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 746
    :cond_19
    return-void
.end method

.method protected handleUserChanged(I)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 710
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 711
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onUserChanged(I)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 713
    :cond_17
    return-void
.end method

.method public isCardRemoved()Z
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->cardRemoved:Z

    return v0
.end method

.method public isClockVisible()Z
    .registers 2

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharged()Z
    .registers 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isDevicePluggedIn()Z
    .registers 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .registers 2

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isDisableEnter()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_a

    .line 1289
    :cond_9
    :goto_9
    return v0

    .line 1275
    :cond_a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNosimNoIDLE()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1282
    :cond_1a
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPersoPPKBlocked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1289
    :cond_2a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPersoPPKBlocked()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->persoPPKBlocked:Z

    return v0
.end method

.method public isSimLocked(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isTimeZoneChanged()Z
    .registers 2

    .prologue
    .line 1295
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTimeZoneChanged:Z

    return v0
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 2477
    monitor-enter p0

    .line 2493
    :try_start_1
    monitor-exit p0

    .line 2496
    return-void

    .line 2493
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2134
    packed-switch p1, :pswitch_data_12e

    .line 2236
    :goto_3
    :pswitch_3
    if-eqz p3, :cond_8

    .line 2237
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2240
    :cond_8
    return-void

    .line 2136
    :pswitch_9
    if-eqz p3, :cond_25

    .line 2137
    :try_start_b
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    .line 2138
    const/16 v0, 0x191

    const/16 v1, 0x701

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessage(III)V

    .line 2143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1e

    goto :goto_3

    .line 2236
    :catchall_1e
    move-exception v0

    if-eqz p3, :cond_24

    .line 2237
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v0

    .line 2145
    :cond_25
    const/4 v0, 0x0

    :try_start_26
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I

    .line 2146
    const/16 v1, 0x192

    const/16 v2, 0x701

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessageDelayed(IIIJ)V

    goto :goto_3

    .line 2155
    :pswitch_3b
    if-eqz p3, :cond_57

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2156
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    .line 2157
    const/16 v0, 0x191

    const/16 v1, 0x703

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessage(III)V

    .line 2162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    goto :goto_3

    .line 2164
    :cond_57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I

    .line 2165
    const/16 v1, 0x192

    const/16 v2, 0x703

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessageDelayed(IIIJ)V

    goto :goto_3

    .line 2175
    :pswitch_6d
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v6

    .line 2176
    .local v6, operatorId:I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_7a

    const/4 v0, 0x2

    if-eq v6, v0, :cond_7a

    const/4 v0, 0x4

    if-ne v6, v0, :cond_ae

    .line 2179
    :cond_7a
    if-eqz p3, :cond_97

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 2180
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    .line 2181
    const/16 v0, 0x191

    const/16 v1, 0x702

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessage(III)V

    .line 2185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    goto/16 :goto_3

    .line 2187
    :cond_97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    .line 2188
    const/16 v1, 0x192

    const/16 v2, 0x702

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessageDelayed(IIIJ)V

    goto/16 :goto_3

    .line 2194
    :cond_ae
    const/16 v0, 0x8

    if-eq v6, v0, :cond_ba

    const/16 v0, 0x10

    if-eq v6, v0, :cond_ba

    const/16 v0, 0x20

    if-ne v6, v0, :cond_e7

    .line 2197
    :cond_ba
    if-eqz p3, :cond_d0

    .line 2198
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    .line 2199
    const/16 v0, 0x191

    const/16 v1, 0x702

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessage(III)V

    .line 2203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    goto/16 :goto_3

    .line 2205
    :cond_d0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    .line 2206
    const/16 v1, 0x192

    const/16 v2, 0x702

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessageDelayed(IIIJ)V

    goto/16 :goto_3

    .line 2213
    :cond_e7
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete err operatorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2218
    .end local v6           #operatorId:I
    :pswitch_101
    if-eqz p3, :cond_117

    .line 2219
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I

    .line 2220
    const/16 v0, 0x191

    const/16 v1, 0x704

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessage(III)V

    .line 2224
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    goto/16 :goto_3

    .line 2226
    :cond_117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I

    .line 2227
    const/16 v1, 0x192

    const/16 v2, 0x704

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->sendQueryCompleteMessageDelayed(IIIJ)V
    :try_end_12c
    .catchall {:try_start_26 .. :try_end_12c} :catchall_1e

    goto/16 :goto_3

    .line 2134
    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3b
        :pswitch_3
        :pswitch_6d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_101
    .end packed-switch
.end method

.method public registerBgpControlCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BgpControlCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2368
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2372
    :cond_d
    return-void
.end method

.method public registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    .registers 7
    .parameter "callback"

    .prologue
    .line 1058
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    .line 1059
    .local v1, subscription:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 1060
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    iget v4, v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-interface {p1, v2, v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshBatteryInfo(ZZI)V

    .line 1064
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onTimeChanged()V

    .line 1065
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mRingMode:I

    invoke-interface {p1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRingerModeChanged(I)V

    .line 1066
    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-interface {p1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onPhoneStateChanged(I)V

    .line 1067
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1068
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3e
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_61

    .line 1069
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {p1, v2, v3, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 1072
    .end local v0           #i:I
    :cond_56
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-interface {p1, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1075
    :cond_61
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onClockVisibilityChanged()V

    .line 1080
    :cond_64
    return-void
.end method

.method public registerMissedCommInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedCommInfoCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1328
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    :cond_d
    return-void
.end method

.method public registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V
    .registers 5
    .parameter "callback"

    .prologue
    .line 1087
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v1

    .line 1088
    .local v1, subscription:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1089
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1092
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 1093
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v2, v2, v0

    invoke-interface {p1, v2, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1096
    .end local v0           #i:I
    :cond_34
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1102
    :cond_3b
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 946
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBgpControlCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    return-void
.end method

.method public reportClockVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1107
    return-void
.end method

.method public reportFailedAttempt()V
    .registers 2

    .prologue
    .line 1199
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1200
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .registers 2

    .prologue
    .line 1211
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1212
    return-void
.end method

.method public reportSimUnlocked()V
    .registers 4

    .prologue
    .line 1130
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    .line 1131
    .local v0, subscription:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v1, v0

    .line 1132
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v2, v2, v0

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;I)V

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    .line 1133
    return-void
.end method

.method public reportSimUnlocked(I)V
    .registers 4
    .parameter "subscription"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, p1

    .line 1137
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v1, v1, p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;)V

    .line 1138
    return-void
.end method

.method public setWatchdogTestCase(I)V
    .registers 2
    .parameter "testCaseId"

    .prologue
    .line 2503
    return-void
.end method

.method public shouldShowBatteryInfo()Z
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPluggedIn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBatteryLow(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
