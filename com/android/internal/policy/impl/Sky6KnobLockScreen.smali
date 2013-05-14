.class public Lcom/android/internal/policy/impl/Sky6KnobLockScreen;
.super Landroid/widget/LinearLayout;
.source "Sky6KnobLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$MissedCommInfo;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$SkyLockScreenCallback;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$CommonLockScreenCallback;


# static fields
.field private static final FLAG_HIDE_PANEL_IF_NO_MISSED_COMM:Z = false

.field private static ICON_MINI_VALUE:F = 0.0f

.field private static MISSED_COMM_HIT_TEST_MARGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Sky6KnobLockScreen"


# instance fields
.field private final FLIP_MODE_0_KNOB:I

.field private final FLIP_MODE_1_KNOB:I

.field private final FLIP_MODE_2_KNOB:I

.field private final FLIP_MODE_3_KNOB:I

.field private final FLIP_MODE_4_KNOB:I

.field private final FLIP_MODE_DEFAULT:I

.field private final FLIP_MODE_UNLOCK:I

.field private final KNOB_INIT_POS_X:[I

.field private final KNOB_INIT_POS_Y:[I

.field private final RES_ID_FL_KNOB:[I

.field private final RES_ID_TEXT_MISSED_NUM:[I

.field private mAlarmInfo:Landroid/widget/TextView;

.field private mAutoAnswerText:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mBatteryLevelIcon:Landroid/widget/TextView;

.field private mBigBgOfPanel:Landroid/widget/ImageView;

.field private mCallCount:[Landroid/widget/TextView;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mCurrentFlipMode:I

.field private mDefaultFlipPanel:Landroid/widget/ImageView;

.field private mEmailCount:[Landroid/widget/TextView;

.field private mFLForKnobInitPos:Landroid/widget/FrameLayout;

.field private mFlipPanelBeingVanished:Z

.field private mFuelGaugePanel:Landroid/widget/FrameLayout;

.field private mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

.field private mFullChargedAlarmTimerTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mIsFirstExpose:Z

.field private mKnobUnlock:Landroid/widget/ImageView;

.field private mKnob_0:Landroid/widget/ImageView;

.field private mKnob_1:Landroid/widget/ImageView;

.field private mKnob_2:Landroid/widget/ImageView;

.field private mKnob_3:Landroid/widget/ImageView;

.field private mKnob_4:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissedCommFlipPanel:Landroid/widget/LinearLayout;

.field private mMissedCommKnob:Landroid/widget/FrameLayout;

.field private mNeedToShowFullChargedAlarm:Z

.field private mResetSelector:Z

.field private mRoamingState:Z

.field private mRunningFlipPanelAnimation:Z

.field private mSMSCount:[Landroid/widget/TextView;

.field private mShowingBatteryInfo:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mTimeLocalPanel:Landroid/widget/LinearLayout;

.field private mTimePanel:Landroid/widget/LinearLayout;

.field private mTimeRoamingPanel:Landroid/widget/LinearLayout;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVanishingAndRinging:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private m_TV_missed_call:[Landroid/widget/TextView;

.field private m_TV_missed_email:[Landroid/widget/TextView;

.field private m_TV_missed_sms:[Landroid/widget/TextView;

.field private m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

.field private m_sArrayAppPkgName:[Ljava/lang/String;

.field private m_sArrayAppTitle:[Ljava/lang/String;

.field private m_sArrayAppURI:[Ljava/lang/String;

.field private m_sArrayContactsClassName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/16 v0, 0x46

    sput v0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->MISSED_COMM_HIT_TEST_MARGIN:I

    .line 135
    const v0, 0x3f666666

    sput v0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v3, 0x6

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    .line 63
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;

    .line 69
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRoamingState:Z

    .line 70
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mResetSelector:Z

    .line 73
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVanishingAndRinging:Z

    .line 75
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBigBgOfPanel:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    .line 78
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    .line 79
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    .line 80
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    .line 82
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    .line 83
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_0:Landroid/widget/ImageView;

    .line 84
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_1:Landroid/widget/ImageView;

    .line 85
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_2:Landroid/widget/ImageView;

    .line 86
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_3:Landroid/widget/ImageView;

    .line 87
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_4:Landroid/widget/ImageView;

    .line 88
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnobUnlock:Landroid/widget/ImageView;

    .line 90
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 92
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    .line 94
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    .line 95
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    .line 96
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    .line 99
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    .line 102
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAutoAnswerText:Landroid/widget/TextView;

    .line 103
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAlarmInfo:Landroid/widget/TextView;

    .line 105
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    .line 107
    iput v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_DEFAULT:I

    .line 108
    iput v7, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_0_KNOB:I

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_1_KNOB:I

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_2_KNOB:I

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_3_KNOB:I

    .line 112
    iput v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_4_KNOB:I

    .line 113
    iput v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->FLIP_MODE_UNLOCK:I

    .line 117
    iput v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    .line 118
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    .line 120
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 123
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    .line 128
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    .line 129
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    .line 130
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    .line 131
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    .line 133
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    .line 137
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    .line 138
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    .line 139
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    .line 141
    new-array v0, v2, [I

    fill-array-data v0, :array_fe

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_TEXT_MISSED_NUM:[I

    .line 149
    new-array v0, v3, [I

    fill-array-data v0, :array_10c

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_FL_KNOB:[I

    .line 158
    new-array v0, v3, [I

    fill-array-data v0, :array_11c

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->KNOB_INIT_POS_X:[I

    .line 162
    new-array v0, v3, [I

    fill-array-data v0, :array_12c

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->KNOB_INIT_POS_Y:[I

    .line 166
    new-instance v0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$1;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 2401
    new-instance v0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmTimerTask:Ljava/lang/Runnable;

    .line 2481
    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVibrator:Landroid/os/Vibrator;

    .line 214
    iput-object p3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 215
    iput-object p4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 216
    iput-object p5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 217
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCreationOrientation:I

    .line 225
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 239
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x1090064

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 242
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 243
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 250
    :goto_e0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->initLayout()V

    .line 252
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setFocusable(Z)V

    .line 253
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setFocusableInTouchMode(Z)V

    .line 254
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setDescendantFocusability(I)V

    .line 255
    return-void

    .line 246
    :cond_ef
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_e0

    .line 141
    :array_fe
    .array-data 0x4
        0x1ct 0x3t 0x2t 0x1t
        0x21t 0x3t 0x2t 0x1t
        0x26t 0x3t 0x2t 0x1t
        0x2bt 0x3t 0x2t 0x1t
        0x30t 0x3t 0x2t 0x1t
    .end array-data

    .line 149
    :array_10c
    .array-data 0x4
        0x18t 0x3t 0x2t 0x1t
        0x1dt 0x3t 0x2t 0x1t
        0x22t 0x3t 0x2t 0x1t
        0x27t 0x3t 0x2t 0x1t
        0x2ct 0x3t 0x2t 0x1t
        0x31t 0x3t 0x2t 0x1t
    .end array-data

    .line 158
    :array_11c
    .array-data 0x4
        0x8et 0x0t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0x31t 0x2t 0x0t 0x0t
        0xa3t 0x1t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 162
    :array_12c
    .array-data 0x4
        0x18t 0x1t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x6t 0x2t 0x0t 0x0t
        0xfct 0x2t 0x0t 0x0t
        0xfct 0x2t 0x0t 0x0t
        0x24t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVanishingAndRinging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAlarmInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedCommStop()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAutoAnswerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;FF)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedCommStart(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;FF)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedComm(FF)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->onTrigger(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private animateMissedComm(FF)V
    .registers 15
    .parameter "posX"
    .parameter "posY"

    .prologue
    const v11, 0x43da8000

    const/high16 v10, 0x43a4

    const/high16 v9, 0x4320

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1799
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v6, :cond_e

    .line 1878
    :goto_d
    return-void

    .line 1804
    :cond_e
    const v6, 0x10202ff

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1805
    .local v0, TViewStringGuide:Landroid/widget/TextView;
    const-string v4, ""

    .line 1807
    .local v4, sDragInText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1808
    .local v1, interpolatedX:F
    const/4 v2, 0x0

    .line 1810
    .local v2, interpolatedY:F
    const/4 v6, 0x2

    new-array v3, v6, [I

    fill-array-data v3, :array_102

    .line 1811
    .local v3, posTarget:[I
    const v6, 0x10202fc

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1813
    .local v5, targetPanel:Landroid/widget/ImageView;
    iget v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    packed-switch v6, :pswitch_data_10a

    .line 1852
    const-string v4, "OK!"

    .line 1856
    :goto_31
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v9, p1

    add-int/lit8 v9, v9, -0x3e

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1857
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v9, p2

    add-int/lit8 v9, v9, -0x7a

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1859
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1861
    aget v6, v3, v8

    sget v9, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->MISSED_COMM_HIT_TEST_MARGIN:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_ed

    aget v6, v3, v7

    sget v9, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->MISSED_COMM_HIT_TEST_MARGIN:I

    add-int/2addr v6, v9

    int-to-float v6, v6

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_ed

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    aget v9, v3, v8

    add-int/2addr v6, v9

    sget v9, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->MISSED_COMM_HIT_TEST_MARGIN:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_ed

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    aget v9, v3, v7

    add-int/2addr v6, v9

    sget v9, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->MISSED_COMM_HIT_TEST_MARGIN:I

    sub-int/2addr v6, v9

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-gez v6, :cond_ed

    move v6, v7

    :goto_81
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    .line 1866
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-eqz v6, :cond_ef

    const v6, 0x108013f

    :goto_8a
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1871
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-eqz v6, :cond_f3

    .line 1872
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d

    .line 1816
    :pswitch_9a
    sub-float v1, p1, v9

    .line 1817
    sub-float v2, p2, v10

    .line 1818
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    aget-object v4, v6, v8

    .line 1819
    goto :goto_31

    .line 1822
    :pswitch_a3
    sub-float v1, p1, v11

    .line 1823
    sub-float v2, p2, v10

    .line 1824
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    aget-object v4, v6, v7

    .line 1825
    goto :goto_31

    .line 1828
    :pswitch_ac
    const v6, 0x4410c000

    sub-float v1, p1, v6

    .line 1829
    const v6, 0x440d8000

    sub-float v2, p2, v6

    .line 1830
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v4, v6, v9

    .line 1831
    goto/16 :goto_31

    .line 1834
    :pswitch_bd
    sub-float v1, p1, v11

    .line 1835
    const/high16 v6, 0x444b

    sub-float v2, p2, v6

    .line 1836
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v4, v6, v9

    .line 1837
    goto/16 :goto_31

    .line 1840
    :pswitch_ca
    sub-float v1, p1, v9

    .line 1841
    const/high16 v6, 0x444b

    sub-float v2, p2, v6

    .line 1842
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v4, v6, v9

    .line 1843
    goto/16 :goto_31

    .line 1846
    :pswitch_d7
    const/high16 v6, 0x4190

    sub-float v1, p1, v6

    .line 1847
    const v6, 0x440d8000

    sub-float v2, p2, v6

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x10405b2

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1849
    goto/16 :goto_31

    :cond_ed
    move v6, v8

    .line 1861
    goto :goto_81

    .line 1866
    :cond_ef
    const v6, 0x108013e

    goto :goto_8a

    .line 1875
    :cond_f3
    const v6, 0x10405c2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1876
    const v6, -0x27bbfd

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d

    .line 1810
    nop

    :array_102
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1813
    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_a3
        :pswitch_ac
        :pswitch_bd
        :pswitch_ca
        :pswitch_d7
    .end packed-switch
.end method

.method private animateMissedCommStart(FF)V
    .registers 13
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1642
    const/4 v2, 0x0

    .line 1650
    .local v2, bubbleCounter:Landroid/widget/TextView;
    const v4, 0x10202ff

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1651
    .local v1, TViewStringGuide:Landroid/widget/TextView;
    const v4, 0x10405c2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1652
    const v4, -0x27bbfd

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1654
    const/4 v0, 0x0

    .line 1656
    .local v0, IViewFloatingKnob:Landroid/widget/ImageView;
    iget v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    packed-switch v4, :pswitch_data_202

    .line 1770
    const-string v4, "Sky6KnobLockScreen"

    const-string v5, "Cancel flip panel animation: unknown flip type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedCommStop()V

    .line 1796
    :goto_2b
    return-void

    .line 1658
    :pswitch_2c
    const v4, 0x102031d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1661
    const v4, 0x1020320

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1662
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1664
    const v4, 0x102031e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1665
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1667
    const v4, 0x102031f

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1668
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1669
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1671
    const v4, 0x1020321

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #bubbleCounter:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1672
    .restart local v2       #bubbleCounter:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1775
    :goto_6e
    const v4, 0x10202fc

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1776
    .local v3, missedCommRes:Landroid/widget/ImageView;
    const v4, 0x108013e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1778
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1779
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1780
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1781
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1783
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    .line 1785
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1786
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1788
    :cond_9e
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedComm(FF)V

    .line 1790
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1791
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1793
    const-wide/16 v4, 0x14

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->vibrate(J)V

    .line 1795
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto/16 :goto_2b

    .line 1677
    .end local v3           #missedCommRes:Landroid/widget/ImageView;
    :pswitch_b9
    const v4, 0x1020322

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1680
    const v4, 0x1020325

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1681
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1683
    const v4, 0x1020323

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1684
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1686
    const v4, 0x1020324

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1687
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1688
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1690
    const v4, 0x1020326

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #bubbleCounter:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1691
    .restart local v2       #bubbleCounter:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6e

    .line 1696
    :pswitch_fe
    const v4, 0x1020327

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1699
    const v4, 0x102032a

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1700
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1702
    const v4, 0x1020328

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1703
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1706
    const v4, 0x1020329

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1707
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1710
    const v4, 0x102032b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #bubbleCounter:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1711
    .restart local v2       #bubbleCounter:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6e

    .line 1716
    :pswitch_143
    const v4, 0x102032c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1719
    const v4, 0x102032f

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1720
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1722
    const v4, 0x102032d

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1723
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1725
    const v4, 0x102032e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1726
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1727
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1729
    const v4, 0x1020330

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #bubbleCounter:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1730
    .restart local v2       #bubbleCounter:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6e

    .line 1735
    :pswitch_187
    const v4, 0x1020331

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1738
    const v4, 0x1020334

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1739
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1741
    const v4, 0x1020332

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1742
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1744
    const v4, 0x1020333

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1745
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    const v4, 0x10803f1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1746
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6e

    .line 1751
    :pswitch_1be
    const v4, 0x1020318

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1754
    const v4, 0x102031b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1755
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1757
    const v4, 0x1020319

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1758
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1760
    const v4, 0x102031a

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 1761
    .restart local v0       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1762
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1764
    const v4, 0x102031c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #bubbleCounter:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1765
    .restart local v2       #bubbleCounter:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6e

    .line 1656
    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_1be
        :pswitch_2c
        :pswitch_b9
        :pswitch_fe
        :pswitch_143
        :pswitch_187
    .end packed-switch
.end method

.method private animateMissedCommStop()V
    .registers 10

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x4

    const/4 v4, 0x0

    .line 1885
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v3, :cond_1a8

    .line 1888
    const-string v3, "Sky6KnobLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animate stop mCurrentFlipMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    packed-switch v3, :pswitch_data_1c4

    .line 1958
    :goto_27
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3f

    .line 1959
    const-string v3, "Sky6KnobLockScreen"

    const-string v6, "mMissedCommKnob is NOT NULL"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1963
    iget v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->initKnobPos(IZ)V

    .line 1973
    :cond_3f
    :goto_3f
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->checkMissedCommunication(Z)V

    .line 1975
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v3, :cond_c5

    .line 1977
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    if-nez v3, :cond_55

    .line 1978
    const v3, 0x10202fe

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    .line 1980
    :cond_55
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1982
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    if-nez v3, :cond_69

    .line 1983
    const v3, 0x10202fd

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    .line 1985
    :cond_69
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1988
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    if-nez v3, :cond_83

    .line 1989
    const v3, 0x1020311

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    .line 1993
    :cond_83
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1996
    :cond_88
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    if-nez v3, :cond_97

    .line 1997
    const v3, 0x1020300

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    .line 2001
    :cond_97
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatus()Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    .line 2002
    .local v2, status:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    iget-object v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->shouldShowStatusLines()Z

    move-result v3

    if-eqz v3, :cond_1c1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    if-eqz v3, :cond_1c1

    move v3, v4

    :goto_aa
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2006
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2008
    :cond_b6
    const v3, 0x10202fc

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2009
    .local v1, missedCommRes:Landroid/widget/ImageView;
    const v3, 0x108013e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2013
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    .end local v2           #status:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    :cond_c5
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    .line 2014
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    .line 2015
    return-void

    .line 1892
    :pswitch_ca
    const v3, 0x1020318

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1894
    const v3, 0x1020319

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1895
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1897
    const v3, 0x102031b

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1898
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_27

    .line 1903
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    :pswitch_ef
    const v3, 0x102031d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1905
    const v3, 0x102031e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1906
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1908
    const v3, 0x1020320

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1909
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_27

    .line 1914
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    :pswitch_114
    const v3, 0x1020322

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1916
    const v3, 0x1020323

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1917
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1919
    const v3, 0x1020325

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1920
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_27

    .line 1925
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    :pswitch_139
    const v3, 0x1020327

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1927
    const v3, 0x1020328

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1928
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1930
    const v3, 0x102032a

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1931
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_27

    .line 1936
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    :pswitch_15e
    const v3, 0x102032c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1938
    const v3, 0x102032d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1939
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1941
    const v3, 0x102032f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1942
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_27

    .line 1947
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    :pswitch_183
    const v3, 0x1020331

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1949
    const v3, 0x1020332

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1950
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1952
    const v3, 0x1020334

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 1953
    .restart local v1       #missedCommRes:Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_27

    .line 1966
    .end local v1           #missedCommRes:Landroid/widget/ImageView;
    :cond_1a8
    const v3, 0x10202ff

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1967
    .local v0, TViewStringGuide:Landroid/widget/TextView;
    const-string v3, "OK!"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1968
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1970
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3f

    .end local v0           #TViewStringGuide:Landroid/widget/TextView;
    .restart local v2       #status:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    :cond_1c1
    move v3, v5

    .line 2002
    goto/16 :goto_aa

    .line 1890
    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_ef
        :pswitch_114
        :pswitch_139
        :pswitch_15e
        :pswitch_183
    .end packed-switch
.end method

.method private checkMissedCommunication(Z)V
    .registers 4
    .parameter "hideIfNothing"

    .prologue
    .line 2086
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "checkMissedCommunication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-eqz v0, :cond_c

    .line 2099
    :goto_b
    return-void

    .line 2094
    :cond_c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 2095
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->checkMissedCommunicationsAndHideIfNothingMissed()V

    goto :goto_b

    .line 2097
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->checkMissedCommunicationsAndShowAlways()V

    goto :goto_b
.end method

.method private checkMissedCommunicationsAndHideIfNothingMissed()V
    .registers 6

    .prologue
    .line 2103
    const/4 v0, 0x0

    .line 2106
    .local v0, bubbleCounter:Landroid/widget/TextView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6d

    .line 2107
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_23

    .line 2108
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    aget-object v0, v3, v2

    .line 2109
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_60

    .line 2110
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2116
    :cond_23
    :goto_23
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_41

    .line 2117
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    aget-object v0, v3, v2

    .line 2118
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6e

    .line 2119
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2125
    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    if-eqz v3, :cond_5d

    .line 2126
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    aget-object v0, v3, v2

    .line 2127
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_73

    .line 2128
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2106
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2112
    :cond_60
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_64} :catch_65

    goto :goto_23

    .line 2134
    :catch_65
    move-exception v1

    .line 2136
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Sky6KnobLockScreen"

    const-string v4, "checkMissedCommunicationsAndHideIfNothingMissed error catch!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6d
    return-void

    .line 2121
    :cond_6e
    const/4 v3, 0x4

    :try_start_6f
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_41

    .line 2130
    :cond_73
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_65

    goto :goto_5d
.end method

.method private checkMissedCommunicationsAndShowAlways()V
    .registers 6

    .prologue
    .line 2145
    const/4 v0, 0x0

    .line 2148
    .local v0, bubbleCounter:Landroid/widget/TextView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6f

    .line 2149
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_23

    .line 2150
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    aget-object v0, v3, v2

    .line 2151
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_62

    .line 2152
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2162
    :cond_23
    :goto_23
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_41

    .line 2163
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    aget-object v0, v3, v2

    .line 2164
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_70

    .line 2165
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2175
    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5f

    .line 2176
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    aget-object v0, v3, v2

    .line 2177
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_75

    .line 2178
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2148
    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2156
    :cond_62
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_66} :catch_67

    goto :goto_23

    .line 2188
    :catch_67
    move-exception v1

    .line 2190
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Sky6KnobLockScreen"

    const-string v4, "checkMissedCommunicationsAndShowAlways error catch!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6f
    return-void

    .line 2169
    :cond_70
    const/4 v3, 0x4

    :try_start_71
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_41

    .line 2182
    :cond_75
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_67

    goto :goto_5f
.end method

.method private checkMissedDataKnob()V
    .registers 7

    .prologue
    .line 1272
    const-string v3, "Sky6KnobLockScreen"

    const-string v4, "checkMissedDataKnob()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v2, 0x0

    .line 1277
    .local v2, tempTV:Landroid/widget/TextView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    const/4 v3, 0x5

    if-ge v1, v3, :cond_19e

    .line 1279
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1281
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.android.contacts.DialtactsCallLogEntryActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.android.contacts.activities.PCUDialtactsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 1286
    :cond_3c
    const-string v3, "Sky6KnobLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed call!! i= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMissedCallCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_TEXT_MISSED_NUM:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 1292
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    .line 1293
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMissedCallCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 1295
    :cond_8f
    const-string v3, "Sky6KnobLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t Show bubble in contacts i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_TEXT_MISSED_NUM:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 1298
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b

    .line 1328
    :catch_b8
    move-exception v3

    goto :goto_8b

    .line 1300
    :cond_ba
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.pantech.app.mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 1303
    const-string v3, "Sky6KnobLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed sms!! i= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadMsgCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_TEXT_MISSED_NUM:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 1309
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    .line 1310
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadMsgCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1311
    :cond_117
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 1314
    const-string v3, "Sky6KnobLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed email!! i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadEmailCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_TEXT_MISSED_NUM:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    .line 1320
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    .line 1321
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadEmailCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1323
    :cond_174
    const-string v3, "Sky6KnobLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t Show bubble i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_TEXT_MISSED_NUM:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 1326
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_19c} :catch_b8

    goto/16 :goto_8b

    .line 1332
    :cond_19e
    return-void
.end method

.method private cleanUpCustomResources()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1507
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBigBgOfPanel:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1508
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1509
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_0:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1510
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_1:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1511
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_2:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1512
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_3:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1513
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_4:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1514
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnobUnlock:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 1516
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    const/4 v1, 0x5

    if-ge v0, v1, :cond_41

    .line 1517
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3e

    .line 1518
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1519
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v0

    .line 1516
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1523
    :cond_41
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;

    .line 1525
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBigBgOfPanel:Landroid/widget/ImageView;

    .line 1526
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    .line 1527
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    .line 1528
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    .line 1529
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    .line 1530
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    .line 1531
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_0:Landroid/widget/ImageView;

    .line 1532
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_1:Landroid/widget/ImageView;

    .line 1533
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_2:Landroid/widget/ImageView;

    .line 1534
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_3:Landroid/widget/ImageView;

    .line 1535
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_4:Landroid/widget/ImageView;

    .line 1536
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnobUnlock:Landroid/widget/ImageView;

    .line 1537
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommKnob:Landroid/widget/FrameLayout;

    .line 1538
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    .line 1539
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    .line 1540
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    .line 1541
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    .line 1542
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    .line 1543
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    .line 1544
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    .line 1545
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAutoAnswerText:Landroid/widget/TextView;

    .line 1546
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAlarmInfo:Landroid/widget/TextView;

    .line 1548
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    .line 1549
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    .line 1550
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    .line 1551
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    .line 1552
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    .line 1553
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    .line 1554
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    .line 1555
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    .line 1556
    return-void
.end method

.method private cleanupImageView(Landroid/widget/ImageView;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1559
    if-eqz p1, :cond_f

    .line 1560
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1561
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 1562
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1564
    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1566
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_f
    return-void
.end method

.method private goToUnlock()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1580
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "goToUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mResetSelector:Z

    .line 1584
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 1586
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->stopFullChargedAlarm(Z)V

    .line 1587
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1590
    :cond_1c
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->vibrate(J)V

    .line 1592
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1593
    return-void
.end method

.method private goToUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "intentAction"
    .parameter "intentType"

    .prologue
    const/4 v2, 0x1

    .line 1597
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "goToUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mResetSelector:Z

    .line 1601
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 1603
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->stopFullChargedAlarm(Z)V

    .line 1604
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1607
    :cond_1c
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->vibrate(J)V

    .line 1609
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method private initKnobPos(IZ)V
    .registers 6
    .parameter "numKnob"
    .parameter "bOneKnob"

    .prologue
    .line 597
    if-eqz p2, :cond_2b

    .line 598
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_FL_KNOB:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    .line 600
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->KNOB_INIT_POS_X:[I

    aget v2, v2, p1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 601
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->KNOB_INIT_POS_Y:[I

    aget v2, v2, p1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 610
    :cond_2a
    return-void

    .line 603
    :cond_2b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2a

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->RES_ID_FL_KNOB:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    .line 606
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->KNOB_INIT_POS_X:[I

    aget v2, v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 607
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFLForKnobInitPos:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->KNOB_INIT_POS_Y:[I

    aget v2, v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method private initLayout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 258
    const v0, 0x10202f9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBigBgOfPanel:Landroid/widget/ImageView;

    .line 259
    const v0, 0x10202fd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    .line 260
    const v0, 0x1020300

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    .line 261
    const v0, 0x1020302

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    .line 262
    const v0, 0x1020311

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    .line 263
    const v0, 0x10202fe

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mMissedCommFlipPanel:Landroid/widget/LinearLayout;

    .line 264
    const v0, 0x1020304

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    .line 265
    const v0, 0x1020309

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    const v0, 0x10202ca

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAlarmInfo:Landroid/widget/TextView;

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAlarmInfo:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$2;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAutoAnswerText:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAutoAnswerText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$3;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    invoke-direct {p0, v2, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->initKnobPos(IZ)V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setCustom6Knob()V

    .line 308
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->checkMissedDataKnob()V

    .line 309
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->checkMissedCommunication(Z)V

    .line 311
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRoamingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_129

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->checkShowDualClock(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setRoamingView(Z)V

    .line 317
    :goto_aa
    const v0, 0x1020320

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_1:Landroid/widget/ImageView;

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_1:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$4;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    const v0, 0x1020325

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_2:Landroid/widget/ImageView;

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_2:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    const v0, 0x102032a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_3:Landroid/widget/ImageView;

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_3:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$6;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    const v0, 0x102032f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_4:Landroid/widget/ImageView;

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_4:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$7;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    const v0, 0x1020334

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnobUnlock:Landroid/widget/ImageView;

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnobUnlock:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$8;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 529
    const v0, 0x102031b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_0:Landroid/widget/ImageView;

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mKnob_0:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$9;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    return-void

    .line 314
    :cond_129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setStandardView()V

    goto/16 :goto_aa
.end method

.method private onTrigger(I)V
    .registers 11
    .parameter "state"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 1345
    const-string v4, "Sky6KnobLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTrigger: mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v2, 0x0

    .line 1348
    .local v2, intentForAppLaunch:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1352
    .local v3, sTempAppPkgName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 1353
    const-string v4, "gsm.usim.cardtype"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1355
    .local v0, CardType:I
    const-string v4, "Sky6KnobLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<onTrigger>> CardType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/4 v4, 0x3

    if-ne v0, v4, :cond_49

    .line 1358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->goToUnlock()V

    .line 1411
    .end local v0           #CardType:I
    :cond_48
    :goto_48
    return-void

    .line 1365
    :cond_49
    packed-switch p1, :pswitch_data_110

    .line 1371
    :try_start_4c
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1372
    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1

    aget-object v3, v4, v5

    .line 1376
    if-eqz v2, :cond_7a

    .line 1377
    const-string v4, "Sky6KnobLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trigger CurrentFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_7a
    if-eqz v3, :cond_c9

    if-eqz v2, :cond_c9

    .line 1380
    const-string v4, "Sky6KnobLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trigger pkg name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/high16 v4, 0x1020

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1386
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v4

    if-eq v4, v8, :cond_a9

    const-string v4, "com.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    :cond_a9
    const-string v4, "com.pantech.app.mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 1388
    :cond_b1
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1391
    :cond_b6
    const-string v4, "com.pantech.app.mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v4

    if-ne v4, v8, :cond_c9

    .line 1393
    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1398
    :cond_c9
    if-eqz v2, :cond_48

    .line 1400
    const-string v4, "Sky6KnobLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trigger GO intentURI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v4, "hold_start"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1404
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->goToUnlock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_f8} :catch_fa

    goto/16 :goto_48

    .line 1406
    :catch_fa
    move-exception v1

    .line 1407
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Sky6KnobLockScreen"

    const-string v5, "trigger failed..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1409
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->resetFlipPanel()V

    goto/16 :goto_48

    .line 1367
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_10a
    :try_start_10a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->goToUnlock()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_fa

    goto/16 :goto_48

    .line 1365
    nop

    :pswitch_data_110
    .packed-switch 0x6
        :pswitch_10a
    .end packed-switch
.end method

.method private resetFlipPanel()V
    .registers 5

    .prologue
    .line 1570
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetFlipPanel  mFlipPanelBeingVanished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const v1, 0x1020304

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyDigitalClock;

    .line 1573
    .local v0, digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10405c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyDigitalClock;->changeDateFormat(Ljava/lang/String;)V

    .line 1575
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    .line 1576
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedCommStop()V

    .line 1577
    return-void
.end method

.method private setCustom6Knob()V
    .registers 16

    .prologue
    .line 613
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "setCustom6Knob start..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v6, 0x0

    .line 616
    .local v6, IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 620
    .local v7, c:Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 621
    .local v13, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 622
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.pantech.apps.HoldSetting.MordenProvider/data"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 625
    if-eqz v7, :cond_66d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_66d

    .line 626
    const/4 v10, 0x0

    .line 627
    .local v10, i:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3ea
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_3a5

    .line 632
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "_uri"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 635
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_sArrayAppURI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustom c.pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-lt v1, v2, :cond_125

    .line 641
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-static {v1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 643
    .local v11, i2:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 644
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    const/16 v1, 0x4000

    invoke-virtual {v13, v11, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v10

    .line 647
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 649
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v1, v1, v10

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 652
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKG is CONTACTS!! m_sArrayContactsClassName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_e6
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_sArrayAppTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_sArrayAppPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "set image matching OK!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_33 .. :try_end_125} :catchall_3ea
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_125} :catch_2fa

    .line 1018
    .end local v11           #i2:Landroid/content/Intent;
    :cond_125
    :goto_125
    add-int/lit8 v10, v10, 0x1

    .line 1019
    :try_start_127
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_3ea
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_3a5

    move-result v1

    if-nez v1, :cond_33

    .line 1028
    .end local v10           #i:I
    :goto_12d
    if-eqz v7, :cond_132

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1034
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :cond_132
    :goto_132
    const v1, 0x102031a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1035
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1038
    .local v14, targetParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1039
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1040
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    const v1, 0x1020319

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1045
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    const v1, 0x102031b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1048
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1051
    const v1, 0x102031f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1052
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1055
    .restart local v14       #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1056
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1057
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1061
    const v1, 0x102031e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1062
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1064
    const v1, 0x1020320

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1065
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1068
    const v1, 0x1020324

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1069
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1072
    .restart local v14       #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1073
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1074
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1078
    const v1, 0x1020323

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1079
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    const v1, 0x1020325

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1082
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1085
    const v1, 0x1020329

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1086
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1089
    .restart local v14       #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1090
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    const v1, 0x1020328

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1096
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    const v1, 0x102032a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1099
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    const v1, 0x102032e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1103
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1106
    .restart local v14       #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1107
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1108
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1112
    const v1, 0x102032d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1113
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1115
    const v1, 0x102032f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1116
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1119
    const v1, 0x1020333

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1121
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1122
    .restart local v14       #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1123
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-long v1, v1

    long-to-float v1, v1

    sget v2, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->ICON_MINI_VALUE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1124
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1128
    const v1, 0x1020332

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1129
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1131
    const v1, 0x1020334

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #IViewFloatingKnob:Landroid/widget/ImageView;
    check-cast v6, Landroid/widget/ImageView;

    .line 1132
    .restart local v6       #IViewFloatingKnob:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "setCustom6Knob end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-void

    .line 661
    .end local v14           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v10       #i:I
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    :catch_2fa
    move-exception v8

    .line 662
    .local v8, e1:Ljava/lang/Exception;
    :try_start_2fb
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get DB Exception1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v12

    .line 666
    .local v12, operator:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v10

    if-nez v1, :cond_340

    .line 668
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception1 m_sArrayAppICON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    packed-switch v10, :pswitch_data_67a

    .line 791
    :cond_340
    :goto_340
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    aget-object v1, v1, v10

    if-nez v1, :cond_36b

    .line 793
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception1 m_sArrayAppTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_688

    .line 904
    :cond_36b
    :goto_36b
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v1, v1, v10

    if-nez v1, :cond_125

    .line 906
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception1 m_sArrayAppPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_696

    goto/16 :goto_125

    .line 910
    :pswitch_398
    sparse-switch v12, :sswitch_data_6a4

    goto/16 :goto_125

    .line 914
    :sswitch_39d
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.pantech.app.sns"

    aput-object v2, v1, v10
    :try_end_3a3
    .catchall {:try_start_2fb .. :try_end_3a3} :catchall_3ea
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_3a3} :catch_3a5

    goto/16 :goto_125

    .line 1024
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v8           #e1:Ljava/lang/Exception;
    .end local v10           #i:I
    .end local v12           #operator:I
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :catch_3a5
    move-exception v9

    .line 1025
    .local v9, e3:Ljava/lang/Exception;
    :try_start_3a6
    const-string v1, "Sky6KnobLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get PKGmanager or ContentProvider Exception3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setDefault6Knob()V
    :try_end_3c5
    .catchall {:try_start_3a6 .. :try_end_3c5} :catchall_3ea

    .line 1028
    if-eqz v7, :cond_132

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_132

    .line 672
    .end local v9           #e3:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v8       #e1:Ljava/lang/Exception;
    .restart local v10       #i:I
    .restart local v12       #operator:I
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    :pswitch_3cc
    sparse-switch v12, :sswitch_data_6ba

    goto/16 :goto_340

    .line 676
    :sswitch_3d1
    :try_start_3d1
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080696

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 678
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.sns/.activity.MainHomeActivity;end"

    aput-object v2, v1, v10
    :try_end_3e8
    .catchall {:try_start_3d1 .. :try_end_3e8} :catchall_3ea
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3e8} :catch_3a5

    goto/16 :goto_340

    .line 1028
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v8           #e1:Ljava/lang/Exception;
    .end local v10           #i:I
    .end local v12           #operator:I
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :catchall_3ea
    move-exception v1

    if-eqz v7, :cond_3f0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3f0
    throw v1

    .line 681
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v8       #e1:Ljava/lang/Exception;
    .restart local v10       #i:I
    .restart local v12       #operator:I
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    :sswitch_3f1
    :try_start_3f1
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108068f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 683
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 686
    :sswitch_40a
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080690

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 688
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_CAMERA_SKY:Ljava/lang/String;

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 698
    :pswitch_423
    sparse-switch v12, :sswitch_data_6d0

    goto/16 :goto_340

    .line 703
    :sswitch_428
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080692

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 705
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 708
    :sswitch_441
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080693

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 710
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.activities.PeopleActivity;end"

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 720
    :pswitch_45a
    sparse-switch v12, :sswitch_data_6e6

    goto/16 :goto_340

    .line 725
    :sswitch_45f
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080694

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 727
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_MESSAGEBOX_SKY:Ljava/lang/String;

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 730
    :sswitch_478
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080692

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 732
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 742
    :pswitch_491
    sparse-switch v12, :sswitch_data_6fc

    goto/16 :goto_340

    .line 747
    :sswitch_496
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080695

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 749
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_EMAIL_SKY:Ljava/lang/String;

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 752
    :sswitch_4af
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080694

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_MESSAGEBOX_SKY:Ljava/lang/String;

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 764
    :pswitch_4c8
    sparse-switch v12, :sswitch_data_712

    goto/16 :goto_340

    .line 768
    :sswitch_4cd
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108068f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 770
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 773
    :sswitch_4e6
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080690

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 775
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_CAMERA_SKY:Ljava/lang/String;

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 778
    :sswitch_4ff
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080691

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 780
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v2, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.browser/.BrowserActivity;end"

    aput-object v2, v1, v10

    goto/16 :goto_340

    .line 797
    :pswitch_518
    sparse-switch v12, :sswitch_data_728

    goto/16 :goto_36b

    .line 801
    :sswitch_51d
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 805
    :sswitch_52e
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 809
    :sswitch_53f
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 820
    :pswitch_550
    sparse-switch v12, :sswitch_data_73e

    goto/16 :goto_36b

    .line 825
    :sswitch_555
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 829
    :sswitch_566
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 840
    :pswitch_577
    sparse-switch v12, :sswitch_data_754

    goto/16 :goto_36b

    .line 845
    :sswitch_57c
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 849
    :sswitch_58d
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 860
    :pswitch_59e
    sparse-switch v12, :sswitch_data_76a

    goto/16 :goto_36b

    .line 865
    :sswitch_5a3
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 869
    :sswitch_5b4
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 880
    :pswitch_5c5
    sparse-switch v12, :sswitch_data_780

    goto/16 :goto_36b

    .line 884
    :sswitch_5ca
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 888
    :sswitch_5db
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 892
    :sswitch_5ec
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_36b

    .line 918
    :sswitch_5fd
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.pantech.app.music"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 922
    :sswitch_605
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.pantech.app.skycamera"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 933
    :pswitch_60d
    sparse-switch v12, :sswitch_data_796

    goto/16 :goto_125

    .line 938
    :sswitch_612
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v10

    .line 941
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 944
    :sswitch_620
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 955
    :pswitch_628
    sparse-switch v12, :sswitch_data_7ac

    goto/16 :goto_125

    .line 960
    :sswitch_62d
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.pantech.app.mms"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 964
    :sswitch_635
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v10

    .line 967
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 977
    :pswitch_643
    sparse-switch v12, :sswitch_data_7c2

    goto/16 :goto_125

    .line 982
    :sswitch_648
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.android.email"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 986
    :sswitch_650
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.android.mms"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 997
    :pswitch_658
    sparse-switch v12, :sswitch_data_7d8

    goto/16 :goto_125

    .line 1002
    :sswitch_65d
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.pantech.app.music"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 1006
    :sswitch_665
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v2, "com.android.browser"

    aput-object v2, v1, v10

    goto/16 :goto_125

    .line 1021
    .end local v8           #e1:Ljava/lang/Exception;
    .end local v10           #i:I
    .end local v12           #operator:I
    :cond_66d
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "query fail! set Default!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setDefault6Knob()V
    :try_end_677
    .catchall {:try_start_3f1 .. :try_end_677} :catchall_3ea
    .catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_677} :catch_3a5

    goto/16 :goto_12d

    .line 670
    nop

    :pswitch_data_67a
    .packed-switch 0x0
        :pswitch_3cc
        :pswitch_423
        :pswitch_45a
        :pswitch_491
        :pswitch_4c8
    .end packed-switch

    .line 795
    :pswitch_data_688
    .packed-switch 0x0
        :pswitch_518
        :pswitch_550
        :pswitch_577
        :pswitch_59e
        :pswitch_5c5
    .end packed-switch

    .line 908
    :pswitch_data_696
    .packed-switch 0x0
        :pswitch_398
        :pswitch_60d
        :pswitch_628
        :pswitch_643
        :pswitch_658
    .end packed-switch

    .line 910
    :sswitch_data_6a4
    .sparse-switch
        0x1 -> :sswitch_39d
        0x2 -> :sswitch_39d
        0x4 -> :sswitch_39d
        0x8 -> :sswitch_5fd
        0x10 -> :sswitch_605
    .end sparse-switch

    .line 672
    :sswitch_data_6ba
    .sparse-switch
        0x1 -> :sswitch_3d1
        0x2 -> :sswitch_3d1
        0x4 -> :sswitch_3d1
        0x8 -> :sswitch_3f1
        0x10 -> :sswitch_40a
    .end sparse-switch

    .line 698
    :sswitch_data_6d0
    .sparse-switch
        0x1 -> :sswitch_428
        0x2 -> :sswitch_428
        0x4 -> :sswitch_428
        0x8 -> :sswitch_428
        0x10 -> :sswitch_441
    .end sparse-switch

    .line 720
    :sswitch_data_6e6
    .sparse-switch
        0x1 -> :sswitch_45f
        0x2 -> :sswitch_45f
        0x4 -> :sswitch_45f
        0x8 -> :sswitch_45f
        0x10 -> :sswitch_478
    .end sparse-switch

    .line 742
    :sswitch_data_6fc
    .sparse-switch
        0x1 -> :sswitch_496
        0x2 -> :sswitch_496
        0x4 -> :sswitch_496
        0x8 -> :sswitch_496
        0x10 -> :sswitch_4af
    .end sparse-switch

    .line 764
    :sswitch_data_712
    .sparse-switch
        0x1 -> :sswitch_4cd
        0x2 -> :sswitch_4cd
        0x4 -> :sswitch_4cd
        0x8 -> :sswitch_4e6
        0x10 -> :sswitch_4ff
    .end sparse-switch

    .line 797
    :sswitch_data_728
    .sparse-switch
        0x1 -> :sswitch_51d
        0x2 -> :sswitch_51d
        0x4 -> :sswitch_51d
        0x8 -> :sswitch_52e
        0x10 -> :sswitch_53f
    .end sparse-switch

    .line 820
    :sswitch_data_73e
    .sparse-switch
        0x1 -> :sswitch_555
        0x2 -> :sswitch_555
        0x4 -> :sswitch_555
        0x8 -> :sswitch_555
        0x10 -> :sswitch_566
    .end sparse-switch

    .line 840
    :sswitch_data_754
    .sparse-switch
        0x1 -> :sswitch_57c
        0x2 -> :sswitch_57c
        0x4 -> :sswitch_57c
        0x8 -> :sswitch_57c
        0x10 -> :sswitch_58d
    .end sparse-switch

    .line 860
    :sswitch_data_76a
    .sparse-switch
        0x1 -> :sswitch_5a3
        0x2 -> :sswitch_5a3
        0x4 -> :sswitch_5a3
        0x8 -> :sswitch_5a3
        0x10 -> :sswitch_5b4
    .end sparse-switch

    .line 880
    :sswitch_data_780
    .sparse-switch
        0x1 -> :sswitch_5ca
        0x2 -> :sswitch_5ca
        0x4 -> :sswitch_5ca
        0x8 -> :sswitch_5db
        0x10 -> :sswitch_5ec
    .end sparse-switch

    .line 933
    :sswitch_data_796
    .sparse-switch
        0x1 -> :sswitch_612
        0x2 -> :sswitch_612
        0x4 -> :sswitch_612
        0x8 -> :sswitch_612
        0x10 -> :sswitch_620
    .end sparse-switch

    .line 955
    :sswitch_data_7ac
    .sparse-switch
        0x1 -> :sswitch_62d
        0x2 -> :sswitch_62d
        0x4 -> :sswitch_62d
        0x8 -> :sswitch_62d
        0x10 -> :sswitch_635
    .end sparse-switch

    .line 977
    :sswitch_data_7c2
    .sparse-switch
        0x1 -> :sswitch_648
        0x2 -> :sswitch_648
        0x4 -> :sswitch_648
        0x8 -> :sswitch_648
        0x10 -> :sswitch_650
    .end sparse-switch

    .line 997
    :sswitch_data_7d8
    .sparse-switch
        0x1 -> :sswitch_65d
        0x2 -> :sswitch_65d
        0x4 -> :sswitch_65d
        0x8 -> :sswitch_65d
        0x10 -> :sswitch_665
    .end sparse-switch
.end method

.method private setDefault6Knob()V
    .registers 11

    .prologue
    const v9, 0x1080694

    const v8, 0x1080692

    const v7, 0x1080690

    const v6, 0x10405b4

    const v5, 0x10405b3

    .line 1138
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "Anyway DB error!!setDefault6Knob"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v1

    .line 1142
    .local v1, operator:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1b
    const/4 v2, 0x5

    if-ge v0, v2, :cond_222

    .line 1143
    packed-switch v0, :pswitch_data_224

    .line 1142
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1145
    :pswitch_24
    sparse-switch v1, :sswitch_data_232

    goto :goto_21

    .line 1149
    :sswitch_28
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080697

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1150
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.vlingo.odyssey/.gui.ConversationActivity;end"

    aput-object v3, v2, v0

    .line 1151
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1152
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.vlingo.odyssey"

    aput-object v3, v2, v0

    goto :goto_21

    .line 1155
    :sswitch_55
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108068f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1156
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

    aput-object v3, v2, v0

    .line 1157
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1158
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.pantech.app.music"

    aput-object v3, v2, v0

    goto :goto_21

    .line 1161
    :sswitch_82
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1162
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_CAMERA_SKY:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 1163
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10404e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1164
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.pantech.app.skycamera"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1173
    :pswitch_ad
    sparse-switch v1, :sswitch_data_248

    goto/16 :goto_21

    .line 1178
    :sswitch_b2
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1179
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

    aput-object v3, v2, v0

    .line 1180
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1181
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.android.contacts"

    aput-object v3, v2, v0

    .line 1183
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1186
    :sswitch_e0
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080693

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1187
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.activities.PeopleActivity;end"

    aput-object v3, v2, v0

    .line 1188
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1189
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.android.contacts"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1198
    :pswitch_10e
    sparse-switch v1, :sswitch_data_25e

    goto/16 :goto_21

    .line 1203
    :sswitch_113
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1204
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_MESSAGEBOX_SKY:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 1205
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1206
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.pantech.app.mms"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1209
    :sswitch_13b
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1210
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

    aput-object v3, v2, v0

    .line 1211
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1212
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.android.contacts"

    aput-object v3, v2, v0

    .line 1214
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1223
    :pswitch_169
    sparse-switch v1, :sswitch_data_274

    goto/16 :goto_21

    .line 1228
    :sswitch_16e
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080695

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1229
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_EMAIL_SKY:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 1230
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1231
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.android.email"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1234
    :sswitch_19c
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1235
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_MESSAGEBOX_SKY:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 1236
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1237
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.android.mms"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1246
    :pswitch_1c4
    sparse-switch v1, :sswitch_data_28a

    goto/16 :goto_21

    .line 1251
    :sswitch_1c9
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1252
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->URI_CAMERA_SKY:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 1253
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1254
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.pantech.app.skycamera"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1257
    :sswitch_1f4
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_dKnobIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080691

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1258
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppURI:[Ljava/lang/String;

    const-string v3, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.browser/.BrowserActivity;end"

    aput-object v3, v2, v0

    .line 1259
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1260
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_sArrayAppPkgName:[Ljava/lang/String;

    const-string v3, "com.android.browser"

    aput-object v3, v2, v0

    goto/16 :goto_21

    .line 1269
    :cond_222
    return-void

    .line 1143
    nop

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_24
        :pswitch_ad
        :pswitch_10e
        :pswitch_169
        :pswitch_1c4
    .end packed-switch

    .line 1145
    :sswitch_data_232
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_28
        0x4 -> :sswitch_28
        0x8 -> :sswitch_55
        0x10 -> :sswitch_82
    .end sparse-switch

    .line 1173
    :sswitch_data_248
    .sparse-switch
        0x1 -> :sswitch_b2
        0x2 -> :sswitch_b2
        0x4 -> :sswitch_b2
        0x8 -> :sswitch_b2
        0x10 -> :sswitch_e0
    .end sparse-switch

    .line 1198
    :sswitch_data_25e
    .sparse-switch
        0x1 -> :sswitch_113
        0x2 -> :sswitch_113
        0x4 -> :sswitch_113
        0x8 -> :sswitch_113
        0x10 -> :sswitch_13b
    .end sparse-switch

    .line 1223
    :sswitch_data_274
    .sparse-switch
        0x1 -> :sswitch_16e
        0x2 -> :sswitch_16e
        0x4 -> :sswitch_16e
        0x8 -> :sswitch_16e
        0x10 -> :sswitch_19c
    .end sparse-switch

    .line 1246
    :sswitch_data_28a
    .sparse-switch
        0x1 -> :sswitch_1c9
        0x2 -> :sswitch_1c9
        0x4 -> :sswitch_1c9
        0x8 -> :sswitch_1c9
        0x10 -> :sswitch_1f4
    .end sparse-switch
.end method

.method private setRoamingView(Z)V
    .registers 7
    .parameter "showDualClock"

    .prologue
    .line 2045
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roamaing mode - change clock layout dual = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const v2, 0x10202f6

    :try_start_1b
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2049
    .local v1, roamingInfoPane:Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2051
    if-eqz p1, :cond_4f

    .line 2053
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2055
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v2, :cond_3c

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v2, :cond_3c

    .line 2056
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2059
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    .line 2060
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v2, :cond_4e

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v2, :cond_4e

    .line 2061
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2083
    .end local v1           #roamingInfoPane:Landroid/widget/FrameLayout;
    :cond_4e
    :goto_4e
    return-void

    .line 2064
    .restart local v1       #roamingInfoPane:Landroid/widget/FrameLayout;
    :cond_4f
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2066
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v2, :cond_64

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v2, :cond_64

    .line 2067
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2070
    :cond_64
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    const v3, 0x108013c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2072
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    .line 2073
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v2, :cond_7e

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v2, :cond_7e

    .line 2074
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2077
    :cond_7e
    const v2, 0x1020304

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyDigitalClock;

    .line 2078
    .local v0, digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    const v3, 0x10405c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyDigitalClock;->changeDateFormat(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_93} :catch_94

    goto :goto_4e

    .line 2080
    .end local v0           #digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    .end local v1           #roamingInfoPane:Landroid/widget/FrameLayout;
    :catch_94
    move-exception v2

    goto :goto_4e
.end method

.method private setStandardView()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 2018
    const-string v4, "Sky6KnobLockScreen"

    const-string v5, "Non-Roamaing mode - change clock layout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const v4, 0x10202f6

    :try_start_d
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2023
    .local v1, roamingInfoPane:Landroid/widget/FrameLayout;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRoamingState:Z

    if-nez v4, :cond_5f

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2025
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeRoamingPanel:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2027
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v2, :cond_2f

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v2, :cond_2f

    .line 2028
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2030
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mDefaultFlipPanel:Landroid/widget/ImageView;

    const v3, 0x108013c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2032
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimeLocalPanel:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    .line 2033
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v2, :cond_49

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v2, :cond_49

    .line 2034
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2036
    :cond_49
    const v2, 0x1020304

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyDigitalClock;

    .line 2037
    .local v0, digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mContext:Landroid/content/Context;

    const v3, 0x10405c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyDigitalClock;->changeDateFormat(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5e} :catch_61

    .line 2041
    .end local v0           #digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    .end local v1           #roamingInfoPane:Landroid/widget/FrameLayout;
    :goto_5e
    return-void

    .restart local v1       #roamingInfoPane:Landroid/widget/FrameLayout;
    :cond_5f
    move v2, v3

    .line 2023
    goto :goto_17

    .line 2038
    .end local v1           #roamingInfoPane:Landroid/widget/FrameLayout;
    :catch_61
    move-exception v2

    goto :goto_5e
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 2484
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 2485
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVibrator:Landroid/os/Vibrator;

    .line 2488
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 2489
    monitor-exit p0

    return-void

    .line 2484
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkRoaming()V
    .registers 3

    .prologue
    .line 1614
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "checkRoaming()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRoamingState:Z

    .line 1617
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRoamingState:Z

    if-eqz v0, :cond_21

    .line 1618
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->checkShowDualClock(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setRoamingView(Z)V

    .line 1622
    :goto_20
    return-void

    .line 1620
    :cond_21
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setStandardView()V

    goto :goto_20
.end method

.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1493
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1496
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1497
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1498
    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1500
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->cleanUp()V

    .line 1502
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->cleanUpCustomResources()V

    .line 1503
    return-void
.end method

.method public disableUnlockWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2313
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "disableUnlockWidget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const/4 v0, 0x0

    .line 2317
    .local v0, tempFLayout:Landroid/widget/FrameLayout;
    const v1, 0x102031d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2318
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2320
    const v1, 0x1020322

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2321
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2323
    const v1, 0x1020327

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2324
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2326
    const v1, 0x102032c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2327
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2329
    const v1, 0x1020331

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2330
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2332
    const v1, 0x1020318

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2333
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2334
    return-void
.end method

.method public enableUnlockWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2289
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "enableUnlockWidget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/4 v0, 0x0

    .line 2293
    .local v0, tempFLayout:Landroid/widget/FrameLayout;
    const v1, 0x102031d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2294
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2296
    const v1, 0x1020322

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2297
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2299
    const v1, 0x1020327

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2300
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2302
    const v1, 0x102032c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2303
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2305
    const v1, 0x1020331

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2306
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2308
    const v1, 0x1020318

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #tempFLayout:Landroid/widget/FrameLayout;
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2309
    .restart local v0       #tempFLayout:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2310
    return-void
.end method

.method public isFullChargedAlarmEnabled()Z
    .registers 2

    .prologue
    .line 2477
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1422
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1428
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->updateConfiguration()V

    .line 1429
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1434
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1440
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->updateConfiguration()V

    .line 1441
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1336
    const/16 v0, 0xfc

    if-ne p1, v0, :cond_7

    .line 1337
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->goToUnlock()V

    .line 1341
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1450
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1454
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1455
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 1456
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->stopFullChargedAlarm(Z)V

    .line 1457
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1460
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mResetSelector:Z

    if-nez v0, :cond_27

    .line 1461
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->resetFlipPanel()V

    .line 1465
    :cond_27
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 1466
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    .line 1469
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 1470
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1474
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->checkRoaming()V

    .line 1477
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mResetSelector:Z

    .line 1479
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->resetFlipPanel()V

    .line 1482
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1483
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    .line 1486
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 1488
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 1489
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 1625
    const-string v0, "Sky6KnobLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    if-eqz p1, :cond_21

    .line 1637
    :cond_20
    :goto_20
    return-void

    .line 1629
    :cond_21
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mResetSelector:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVanishingAndRinging:Z

    if-eqz v0, :cond_2c

    .line 1630
    :cond_29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->resetFlipPanel()V

    .line 1633
    :cond_2c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVanishingAndRinging:Z

    if-eqz v0, :cond_20

    .line 1634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mVanishingAndRinging:Z

    goto :goto_20
.end method

.method public refreshBatteryStringAndIcon(I)V
    .registers 11
    .parameter "batteryLevel"

    .prologue
    const v8, 0x1040313

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2196
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshBatteryStringAndIcon: show battery info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battery level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isDeviceCharged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PluggedIn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFullChargedAlarmEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_6a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    if-nez v2, :cond_a4

    .line 2208
    :cond_6e
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    if-nez v2, :cond_87

    .line 2210
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "battery is full, but charger unplugged..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    .line 2216
    :cond_87
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "stop showing battery info..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 2219
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 2220
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->stopFullChargedAlarm(Z)V

    .line 2223
    :cond_99
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2224
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2286
    :cond_a3
    :goto_a3
    return-void

    .line 2227
    :cond_a4
    iput p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    .line 2229
    iget v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    div-int/lit8 v0, v2, 0xa

    .line 2230
    .local v0, nLevel:I
    iget v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x5

    if-lt v2, v3, :cond_b7

    .line 2231
    const/16 v2, 0xa

    if-ge v0, v2, :cond_b7

    .line 2232
    add-int/lit8 v0, v0, 0x1

    .line 2235
    :cond_b7
    const/4 v1, 0x0

    .line 2236
    .local v1, toggleAlarm:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    if-nez v2, :cond_c7

    .line 2237
    const v2, 0x1020302

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    .line 2239
    :cond_c7
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 2240
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v2

    if-eqz v2, :cond_149

    .line 2241
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2246
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery full! start toggling full charged alarm...mIsFirstExpose = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mIsFirstExpose:Z

    if-nez v2, :cond_10d

    const/4 v1, 0x1

    .line 2267
    :cond_10d
    :goto_10d
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshbatteryInfo MM toggle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFullChargedAlarmEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    if-eqz v1, :cond_19b

    .line 2272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v2

    if-nez v2, :cond_a3

    .line 2274
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "refreshbatteryInfo startFULL BAT ready OK!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 2277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->startFullChargedAlarm()V

    goto/16 :goto_a3

    .line 2252
    :cond_149
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "charger plugged in... Battery nLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    const/4 v1, 0x0

    goto :goto_10d

    .line 2260
    :cond_17a
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevelIcon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2262
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "low battery!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const/4 v1, 0x0

    goto/16 :goto_10d

    .line 2280
    :cond_19b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->isFullChargedAlarmEnabled()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 2281
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z

    .line 2282
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->stopFullChargedAlarm(Z)V

    .line 2283
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_a3
.end method

.method public startFullChargedAlarm()V
    .registers 6

    .prologue
    .line 2444
    const-string v1, "Sky6KnobLockScreen"

    const-string v2, "start notification for battery charged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    const v1, 0x1020316

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2448
    .local v0, TV_full_charge_message:Landroid/widget/TextView;
    const v1, 0x10405bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2450
    const v1, 0x1020317

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #TV_full_charge_message:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 2452
    .restart local v0       #TV_full_charge_message:Landroid/widget/TextView;
    const v1, 0x10405c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2454
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2455
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmTimerTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2456
    return-void
.end method

.method public stopFullChargedAlarm(Z)V
    .registers 5
    .parameter "bFromGoToUnlock"

    .prologue
    .line 2460
    const-string v0, "Sky6KnobLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFullChargedAlarm() bFromGoToUnlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2465
    const-string v0, "Sky6KnobLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunningFlipPanelAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFlipPanelBeingVanished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v0, :cond_55

    if-nez p1, :cond_55

    .line 2471
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2473
    :cond_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2474
    return-void
.end method

.method public updateBatteryInfo(ZLjava/lang/String;I)V
    .registers 7
    .parameter "showBatteryInfo"
    .parameter "batteryString"
    .parameter "batteryLevel"

    .prologue
    .line 2371
    const-string v0, "Sky6KnobLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatteryInfo. batteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingBatteryInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_31

    .line 2376
    const v0, 0x1020300

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    .line 2377
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    if-nez v0, :cond_40

    .line 2378
    const v0, 0x1020311

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    .line 2380
    :cond_40
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    .line 2381
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->refreshBatteryStringAndIcon(I)V

    .line 2383
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_57

    .line 2384
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "updateBatteryInfo. INVISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2398
    :cond_56
    :goto_56
    return-void

    .line 2390
    :cond_57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z

    if-nez v0, :cond_56

    .line 2391
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "updateBatteryInfo. VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_56

    .line 2395
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_56
.end method

.method updateConfiguration()V
    .registers 4

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1415
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_13

    .line 1416
    iget-object v1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1418
    :cond_13
    return-void
.end method

.method public updateMissedCommInfo(II)V
    .registers 8
    .parameter "whichInfo"
    .parameter "count"

    .prologue
    .line 2495
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh missed comm info ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const/4 v0, 0x0

    .line 2499
    .local v0, bubbleCounter:Landroid/widget/TextView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    const/4 v2, 0x5

    if-ge v1, v2, :cond_7f

    .line 2501
    packed-switch p1, :pswitch_data_80

    .line 2524
    :cond_30
    :goto_30
    if-eqz v0, :cond_38

    .line 2525
    if-lez p2, :cond_7d

    const/4 v2, 0x0

    :goto_35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2499
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2503
    :pswitch_3b
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_30

    .line 2504
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCallCount:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2505
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_call:[Landroid/widget/TextView;

    aget-object v0, v2, v1

    goto :goto_30

    .line 2510
    :pswitch_51
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_30

    .line 2511
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mSMSCount:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2512
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_sms:[Landroid/widget/TextView;

    aget-object v0, v2, v1

    goto :goto_30

    .line 2517
    :pswitch_67
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_30

    .line 2518
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mEmailCount:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2519
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->m_TV_missed_email:[Landroid/widget/TextView;

    aget-object v0, v2, v1

    goto :goto_30

    .line 2525
    :cond_7d
    const/4 v2, 0x4

    goto :goto_35

    .line 2528
    :cond_7f
    return-void

    .line 2501
    :pswitch_data_80
    .packed-switch 0x701
        :pswitch_3b
        :pswitch_51
        :pswitch_67
    .end packed-switch
.end method

.method public updateRoamingStateChanged(ZZ)V
    .registers 7
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    .line 2341
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "updateRoamingStateChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    if-eqz p1, :cond_1b

    .line 2345
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setRoamingView(Z)V

    .line 2355
    :goto_c
    if-nez p1, :cond_1f

    .line 2356
    const v2, 0x1020304

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyDigitalClock;

    .line 2359
    .local v0, digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    invoke-virtual {v0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 2367
    .end local v0           #digitalClock:Lcom/android/internal/widget/SkyDigitalClock;
    :goto_1a
    return-void

    .line 2347
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->setStandardView()V

    goto :goto_c

    .line 2361
    :cond_1f
    const v2, 0x1020309

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 2364
    .local v1, roamingClock:Lcom/android/internal/widget/SkyRoamingDigitalClock;
    invoke-virtual {v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    goto :goto_1a
.end method

.method public updateSimStateChanged(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)V
    .registers 4
    .parameter "statusMode"

    .prologue
    .line 2337
    const-string v0, "Sky6KnobLockScreen"

    const-string v1, "updateSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    return-void
.end method
