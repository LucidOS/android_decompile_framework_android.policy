.class Lcom/android/internal/policy/impl/SkyKeyguardPolicy;
.super Ljava/lang/Object;
.source "SkyKeyguardPolicy.java"


# static fields
.field protected static final ACTION_EMAIL_PASSWORD:Ljava/lang/String; = "com.pantech.intent.action.ACTION_EMAIL_PASSWORD"

.field protected static final AT_N_T:I = 0x10

.field protected static final BGPSTATE_CHANGED:I = 0x1001

.field protected static final BGPSTATE_COMPLETE:I = 0x1004

.field protected static final BGPSTATE_INFO_ALBUM:Ljava/lang/String; = "album"

.field protected static final BGPSTATE_INFO_ARTIST:Ljava/lang/String; = "artist"

.field protected static final BGPSTATE_INFO_ECHO:Ljava/lang/String; = "frombgp"

.field protected static final BGPSTATE_INFO_PAUSE:Ljava/lang/String; = "pause"

.field protected static final BGPSTATE_INFO_PLAY:Ljava/lang/String; = "play"

.field protected static final BGPSTATE_INFO_STATUS:Ljava/lang/String; = "status"

.field protected static final BGPSTATE_INFO_STOP:Ljava/lang/String; = "stop"

.field protected static final BGPSTATE_INFO_TRACK:Ljava/lang/String; = "track"

.field protected static final BGPSTATE_INFO_UNKNOWN:Ljava/lang/String; = "unknown"

.field protected static final BGPSTATE_META:I = 0x1002

.field protected static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field protected static final CLASSNAME_MUSICPLAYBACK_SERVICE_SKY:Ljava/lang/String; = "com.pantech.app.music.common.MusicPlaybackService"

.field protected static final CLASS_NAME_CALLLOG_ACTIVITY:Ljava/lang/String; = "com.android.contacts.DialtactsCallLogEntryActivity"

.field protected static final CLASS_NAME_DIAL_ACTIVITY:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field protected static final DEBUG:Z = true

.field protected static final DEBUG_BGP:Z = true

.field protected static final DEBUG_DM:Z = false

.field protected static final DEBUG_DRAG:Z = false

.field protected static final DEBUG_ROAMING:Z = false

.field protected static final DEBUG_WATCHDOG:Z = false

.field protected static final ENABLE_SKYLOCKSCREEN:Z = true

.field protected static final ENABLE_XPEN:Z = false

.field protected static final FEATURE_UNREAD_INFO_ASYNC_QUERY:Z = true

.field protected static final GSDI_CARD_TYPE_KT_EMPTY_USIM:I = 0x3

.field protected static final GSDI_CARD_TYPE_NONE:I = 0x0

.field protected static final GSDI_CARD_TYPE_ONCHIP_SIM:I = 0xa

.field protected static final GSDI_CARD_TYPE_OTHER_MCC_USIM:I = 0x6

.field protected static final GSDI_CARD_TYPE_OTHER_MNC_USIM:I = 0x5

.field protected static final GSDI_CARD_TYPE_PLMN_USIM:I = 0x1

.field protected static final GSDI_CARD_TYPE_RUIM:I = 0x4

.field protected static final GSDI_CARD_TYPE_SIM:I = 0x8

.field protected static final GSDI_CARD_TYPE_SKT_EMPTY_USIM:I = 0x2

.field protected static final GSDI_CARD_TYPE_TEST_USIM:I = 0x7

.field protected static final GSDI_CARD_TYPE_UNKNOWN:I = 0x9

.field protected static final HOLD_GESTURE_LOCKEFFECT_3D_BUBBLE:I = 0x0

.field protected static final HOLD_GESTURE_LOCKEFFECT_3D_CUBE:I = 0x2

.field protected static final HOLD_GESTURE_LOCKEFFECT_DEFAULT:I = 0x0

.field protected static final HOLD_GESTURE_LOCKEFFECT_LIGHT:I = 0x1

.field protected static final KDDI:I = 0x20

.field protected static final KT:I = 0x2

.field protected static final LG_U_PLUS:I = 0x4

.field protected static final MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String; = null

.field protected static final MAILBOX_TYPE_SELECTION:Ljava/lang/String; = "type == ?"

.field protected static final MAILBOX_UNREAD_URI_SKY:Ljava/lang/String; = "content://com.android.email.provider/"

.field protected static final MAILBOX_UNREAD_URI_SKY_MAILBOX:Ljava/lang/String; = "content://com.android.email.provider/mailbox"

.field protected static final MISSED_CALL:I = 0x701

.field protected static final MISSED_CLASSNAME_CALL_DOMESTIC:Ljava/lang/String; = "com.android.contacts"

.field protected static final MISSED_CLASSNAME_CALL_INTERNATIONAL:Ljava/lang/String; = "com.android.contacts"

.field protected static final MISSED_CLASSNAME_EMAIL_DOMESTIC:Ljava/lang/String; = "com.android.email"

.field protected static final MISSED_CLASSNAME_EMAIL_INTERNATIONAL:Ljava/lang/String; = "com.android.email"

.field protected static final MISSED_CLASSNAME_MSG_DOMESTIC:Ljava/lang/String; = "com.pantech.app.mms"

.field protected static final MISSED_CLASSNAME_MSG_INTERNATIONAL:Ljava/lang/String; = "com.android.mms"

.field protected static final MISSED_CLASSNAME_VVM_DOMESTIC:Ljava/lang/String; = "com.pantech.vvm"

.field protected static final MISSED_CLASSNAME_VVM_INTERNATIONAL:Ljava/lang/String; = "com.pantech.vvm"

.field protected static final MISSED_EMAIL:I = 0x703

.field protected static final MISSED_MSG:I = 0x702

.field protected static final MISSED_VOICEMAIL:I = 0x704

.field protected static final MODEL_MASK:I = 0xff00

.field protected static final OPEN_MOBILE:I = 0x40

.field protected static final OPERATOR_MASK:I = 0xff

.field protected static final SK_TELECOM:I = 0x1

.field protected static final SMS_QUERY_WHERE:Ljava/lang/String; = "read = 0"

.field protected static final SMS_UNREAD_URI:Ljava/lang/String; = null

.field protected static final SMS_UNREAD_URI_DOMESTIC:Ljava/lang/String; = "content://mms-sms/newmsg"

.field protected static final SMS_UNREAD_URI_INTERNATIONAL:Ljava/lang/String; = "content://mms-sms/messagelist"

.field protected static final TAG:Ljava/lang/String; = "SkyKeyguardPolicy"

.field protected static final URI_BROWSER_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.browser/.BrowserActivity;end"

.field protected static final URI_CALL_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

.field protected static final URI_CAMERA_NORMAL_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.pantech.app.skycamera/.Camera;end"

.field protected static final URI_CAMERA_SKY:Ljava/lang/String; = null

.field protected static final URI_CONTACTS_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.activities.PeopleActivity;end"

.field protected static final URI_CREATE_CALL_IGNORE_MSG:Ljava/lang/String; = "com.android.internal.policy.impl.keyguard.createCallIgnoreMsg"

.field protected static final URI_EMAIL_DEFAULT_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.EMAIL_FOLDER;launchFlags=0x34200000;end"

.field protected static final URI_EMAIL_SKY:Ljava/lang/String; = null

.field protected static final URI_EMAIL_VZW_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.EMAIL_FOLDER;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.android.email/.activity.Welcome;end"

.field protected static final URI_MESSAGEBOX_DOMESTIC_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

.field protected static final URI_MESSAGEBOX_INTERNATIONAL_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.mms/.ui.ConversationList;end"

.field protected static final URI_MESSAGEBOX_SKY:Ljava/lang/String; = null

.field protected static final URI_METACHANGED_SKY:Ljava/lang/String; = "com.pantech.app.music.metachanged"

.field protected static final URI_MUSIC_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

.field protected static final URI_PLAYCOMPLETE_SKY:Ljava/lang/String; = "com.pantech.app.music.playbackcomplete"

.field protected static final URI_PLAYSTATECHANGED_SKY:Ljava/lang/String; = "com.pantech.app.music.playstatechanged"

.field protected static final URI_SMARTVOICE_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.vlingo.odyssey/.gui.ConversationActivity;end"

.field protected static final URI_SNSMANAGER_SKY:Ljava/lang/String; = "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.sns/.activity.MainHomeActivity;end"

.field protected static final VERIZON_WIRELESS:I = 0x8

.field protected static final VIBRATE_LONG:J = 0x14L

.field protected static final VIBRATE_SHORT:J = 0x14L

.field protected static final VOICEMAIL_UNREAD_PROJECTION:[Ljava/lang/String; = null

.field protected static final VOICEMAIL_UNREAD_SELECTION:Ljava/lang/String; = "(( _size != 0 AND type = \'voice\' ) OR ( type != \'voice\' )) AND heard = 0 AND update_state = 0"

.field protected static final VOICEMAIL_UNREAD_URI:Ljava/lang/String; = "content://vvm"

.field protected static final mModelId:I = 0x1

.field protected static mSystemBooted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 428
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 457
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(unreadCount)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    .line 500
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "heard"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->VOICEMAIL_UNREAD_PROJECTION:[Ljava/lang/String;

    .line 651
    const-string v0, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.pantech.app.skycamera/.Camera;end"

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_CAMERA_SKY:Ljava/lang/String;

    .line 657
    const-string v0, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_MESSAGEBOX_SKY:Ljava/lang/String;

    .line 663
    const-string v0, "#Intent;action=android.intent.action.EMAIL_FOLDER;launchFlags=0x34200000;end"

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_EMAIL_SKY:Ljava/lang/String;

    .line 669
    const-string v0, "content://mms-sms/newmsg"

    sput-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->SMS_UNREAD_URI:Ljava/lang/String;

    .line 1076
    sput-boolean v3, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->mSystemBooted:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkShowDualClock(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, bRetVal:Z
    const-string v2, "SkyKeyguardPolicy"

    const-string v3, "checkShowDualClock()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dual_clock_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 371
    .local v1, isEnabled:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 373
    const/4 v0, 0x1

    .line 404
    :goto_17
    return v0

    .line 376
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected static extractModelId(I)I
    .registers 2
    .parameter "nModelInfo"

    .prologue
    .line 277
    const v0, 0xff00

    and-int/2addr v0, p0

    return v0
.end method

.method protected static extractOperatorId(I)I
    .registers 2
    .parameter "nModelInfo"

    .prologue
    .line 258
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method protected static getHoldEffectMode(Landroid/content/ContentResolver;)I
    .registers 16
    .parameter "cr"

    .prologue
    .line 1013
    const-string v6, "com.pantech.apps.SkySetting.SkySettingsOracle"

    .line 1014
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v7, "_name"

    .line 1015
    .local v7, KEY_NAME:Ljava/lang/String;
    const-string v8, "_value"

    .line 1017
    .local v8, KEY_VALUE:Ljava/lang/String;
    const-string v12, "Gesture3D"

    .line 1018
    .local v12, keyName:Ljava/lang/String;
    const-string v10, "0"

    .line 1020
    .local v10, defValue:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1021
    .local v14, value:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v2, v0

    const/4 v0, 0x1

    aput-object v8, v2, v0

    .line 1022
    .local v2, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1023
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1026
    .local v9, cur:Landroid/database/Cursor;
    :try_start_32
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->isSystemBooted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    .line 1027
    const-string v0, "SkyKeyguardPolicy"

    const-string v1, "getHoldEffectMode success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1030
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1031
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_32 .. :try_end_68} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_68} :catch_83

    move-result-object v14

    .line 1049
    if-eqz v9, :cond_6f

    .line 1050
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1051
    const/4 v9, 0x0

    .line 1056
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_b8

    move-result v0

    .line 1059
    :goto_73
    return v0

    .line 1033
    :cond_74
    :try_start_74
    const-string v0, "SkyKeyguardPolicy"

    const-string v1, "getHoldEffectMode fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not boot done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_83} :catch_83

    .line 1038
    :catch_83
    move-exception v11

    .line 1039
    .local v11, e:Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.sso."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1045
    .local v13, propValue:Ljava/lang/String;
    if-eqz v13, :cond_ae

    invoke-virtual {v13}, Ljava/lang/String;->length()I
    :try_end_a3
    .catchall {:try_start_84 .. :try_end_a3} :catchall_b0

    move-result v0

    if-lez v0, :cond_ae

    move-object v14, v13

    .line 1049
    :goto_a7
    if-eqz v9, :cond_6f

    .line 1050
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1051
    const/4 v9, 0x0

    goto :goto_6f

    :cond_ae
    move-object v14, v10

    .line 1045
    goto :goto_a7

    .line 1049
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #propValue:Ljava/lang/String;
    :catchall_b0
    move-exception v0

    if-eqz v9, :cond_b7

    .line 1050
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1051
    const/4 v9, 0x0

    :cond_b7
    throw v0

    .line 1057
    :catch_b8
    move-exception v11

    .line 1059
    .restart local v11       #e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_73
.end method

.method protected static getMissedSchemeURI(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "missedID"
    .parameter "scheme"

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, uri:Ljava/lang/String;
    if-eqz p1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 691
    :cond_16
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->isDomesticOperator()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 692
    packed-switch p0, :pswitch_data_f8

    .line 761
    :goto_1f
    if-nez v0, :cond_23

    const-string v0, ""

    .line 763
    :cond_23
    return-object v0

    .line 694
    :pswitch_24
    if-eqz p1, :cond_3a

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 697
    :cond_3a
    const-string v0, "com.android.contacts"

    .line 699
    goto :goto_1f

    .line 702
    :pswitch_3d
    if-eqz p1, :cond_53

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.pantech.app.mms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 705
    :cond_53
    const-string v0, "com.pantech.app.mms"

    .line 707
    goto :goto_1f

    .line 710
    :pswitch_56
    if-eqz p1, :cond_6c

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.email"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 713
    :cond_6c
    const-string v0, "com.android.email"

    .line 715
    goto :goto_1f

    .line 718
    :pswitch_6f
    if-eqz p1, :cond_85

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.pantech.vvm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 721
    :cond_85
    const-string v0, "com.pantech.vvm"

    goto :goto_1f

    .line 726
    :cond_88
    packed-switch p0, :pswitch_data_104

    goto :goto_1f

    .line 728
    :pswitch_8c
    if-eqz p1, :cond_a3

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 731
    :cond_a3
    const-string v0, "com.android.contacts"

    .line 733
    goto/16 :goto_1f

    .line 736
    :pswitch_a7
    if-eqz p1, :cond_be

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 739
    :cond_be
    const-string v0, "com.android.mms"

    .line 741
    goto/16 :goto_1f

    .line 744
    :pswitch_c2
    if-eqz p1, :cond_d9

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.email"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 747
    :cond_d9
    const-string v0, "com.android.email"

    .line 749
    goto/16 :goto_1f

    .line 752
    :pswitch_dd
    if-eqz p1, :cond_f4

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.pantech.vvm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 755
    :cond_f4
    const-string v0, "com.pantech.vvm"

    goto/16 :goto_1f

    .line 692
    :pswitch_data_f8
    .packed-switch 0x701
        :pswitch_24
        :pswitch_3d
        :pswitch_56
        :pswitch_6f
    .end packed-switch

    .line 726
    :pswitch_data_104
    .packed-switch 0x701
        :pswitch_8c
        :pswitch_a7
        :pswitch_c2
        :pswitch_dd
    .end packed-switch
.end method

.method protected static getModelId()I
    .registers 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method protected static getOperatorId()I
    .registers 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public static isDeviceEncrypted()Z
    .registers 4

    .prologue
    .line 1089
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, status:Ljava/lang/String;
    const-string v1, "SkyKeyguardPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceEncrypted ro.crypto.state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-eqz v0, :cond_54

    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1093
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    const-string v1, "SkyKeyguardPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceEncrypted vold.decrypt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    if-eqz v0, :cond_54

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1097
    const/4 v1, 0x1

    .line 1100
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method protected static isDomesticOperator()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 285
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v1

    sparse-switch v1, :sswitch_data_c

    .line 298
    :goto_8
    :sswitch_8
    return v0

    .line 295
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 285
    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_9
    .end sparse-switch
.end method

.method protected static isRoaming(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 344
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 347
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method protected static isSimpleHome(Landroid/content/ContentResolver;)Z
    .registers 20
    .parameter "cr"

    .prologue
    .line 923
    const/4 v11, 0x0

    .line 954
    .local v11, bRetVal:Z
    const-string v7, "com.pantech.apps.SkySetting.SkySettingsOracle"

    .line 955
    .local v7, AUTHORITY:Ljava/lang/String;
    const-string v9, "_name"

    .line 956
    .local v9, KEY_NAME:Ljava/lang/String;
    const-string v10, "_value"

    .line 957
    .local v10, KEY_VALUE:Ljava/lang/String;
    const-string v8, "_isPro"

    .line 959
    .local v8, KEY_ISPROP:Ljava/lang/String;
    const-string v16, "SimpleHome"

    .line 960
    .local v16, keyName:Ljava/lang/String;
    const-string v14, "0"

    .line 961
    .local v14, defValue:Ljava/lang/String;
    const/4 v13, 0x1

    .line 963
    .local v13, defProp:Z
    const/16 v18, 0x0

    .line 964
    .local v18, value:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v3, v1

    const/4 v1, 0x1

    aput-object v10, v3, v1

    .line 965
    .local v3, proj:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, where:Ljava/lang/String;
    const/4 v12, 0x0

    .line 969
    .local v12, cur:Landroid/database/Cursor;
    :try_start_39
    const-string v1, "1"

    const-string v2, "sys.boot_completed"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 970
    const-string v1, "SkyKeyguardPolicy"

    const-string v2, "isSimpleHome - sys.boot_completed = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 973
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 974
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 980
    const-string v1, "SkyKeyguardPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimpleHome (DB) "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_39 .. :try_end_a0} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_a0} :catch_be

    .line 992
    if-eqz v12, :cond_a6

    .line 993
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 994
    const/4 v12, 0x0

    .line 999
    :cond_a6
    :goto_a6
    const-string v1, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1002
    return v11

    .line 976
    :cond_af
    :try_start_af
    const-string v1, "SkyKeyguardPolicy"

    const-string v2, "isSimpleHome - sys.boot_completed = 0, throw Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Not BOOT_COMPLETED"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_be
    .catchall {:try_start_af .. :try_end_be} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_be} :catch_be

    .line 981
    :catch_be
    move-exception v15

    .line 982
    .local v15, e:Ljava/lang/Exception;
    :try_start_bf
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.sso."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 986
    .local v17, propValue:Ljava/lang/String;
    const-string v1, "SkyKeyguardPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SystemProperties "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    if-eqz v17, :cond_12d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12d

    move-object/from16 v18, v17

    .line 990
    :goto_10b
    const-string v1, "SkyKeyguardPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimpleHome (SystemProperties)  = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_bf .. :try_end_125} :catchall_130

    .line 992
    if-eqz v12, :cond_a6

    .line 993
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 994
    const/4 v12, 0x0

    goto/16 :goto_a6

    .line 988
    :cond_12d
    :try_start_12d
    const-string v18, "0"
    :try_end_12f
    .catchall {:try_start_12d .. :try_end_12f} :catchall_130

    goto :goto_10b

    .line 992
    .end local v15           #e:Ljava/lang/Exception;
    .end local v17           #propValue:Ljava/lang/String;
    :catchall_130
    move-exception v1

    if-eqz v12, :cond_137

    .line 993
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 994
    const/4 v12, 0x0

    :cond_137
    throw v1
.end method

.method protected static isSystemBooted()Z
    .registers 1

    .prologue
    .line 1083
    sget-boolean v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->mSystemBooted:Z

    return v0
.end method

.method protected static setRoamingHelpButtonVisibilityByCarrier(Landroid/widget/Button;)V
    .registers 2
    .parameter "helpBtn"

    .prologue
    .line 311
    if-nez p0, :cond_3

    .line 321
    :goto_2
    return-void

    .line 320
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method protected static setRoamingTitleVisibilityByCarrier(Landroid/view/View;)V
    .registers 2
    .parameter "titleTextView"

    .prologue
    .line 333
    if-nez p0, :cond_3

    .line 338
    :goto_2
    return-void

    .line 335
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected static systemBooted()V
    .registers 1

    .prologue
    .line 1079
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->mSystemBooted:Z

    .line 1080
    return-void
.end method
