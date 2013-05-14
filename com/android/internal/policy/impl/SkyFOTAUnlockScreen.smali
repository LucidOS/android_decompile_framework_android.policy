.class public Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SkyFOTAUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SkyFOTAUnlockScreen"

.field private static mFailedAttemptToUnlock:I


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mFailedAttemptToUnlock:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 16
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mUseSystemIME:Z

    .line 80
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 81
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCreationOrientation:I

    .line 82
    iput-object p4, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 83
    iput-object p5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 84
    iput-object p3, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 94
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    const v0, 0x1090065

    const/4 v1, 0x1

    invoke-virtual {v7, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 97
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 104
    :goto_38
    const v0, 0x1020215

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 105
    const v0, 0x10202cd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 108
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setEnableHaptics(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    const v0, 0x10202cf

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 145
    .local v8, switchImeButton:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 147
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_c6

    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    new-instance v0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$3;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_c6
    const v0, 0x1020336

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 158
    .local v9, userMsgLabel:Landroid/widget/TextView;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 159
    const v0, -0x19000001

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    return-void

    .line 100
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v8           #switchImeButton:Landroid/view/View;
    .end local v9           #userMsgLabel:Landroid/widget/TextView;
    :cond_da
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto/16 :goto_38
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 343
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$5;->start()Landroid/os/CountDownTimer;

    .line 361
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .registers 15
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 186
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 191
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 193
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1a

    .line 219
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_19
    return v10

    .line 194
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1a
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 197
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 198
    add-int/lit8 v2, v2, 0x1

    .line 199
    goto :goto_b

    .line 202
    :cond_27
    const/4 v0, 0x0

    .line 203
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 204
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 208
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 213
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_4d

    if-eqz p2, :cond_b

    if-le v0, v10, :cond_b

    .line 214
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 215
    goto :goto_b

    .line 219
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_50
    if-gt v2, v10, :cond_5d

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_5e

    :cond_5d
    move v9, v10

    :cond_5e
    move v10, v9

    goto :goto_19
.end method

.method private verifyPasswordAndUnlock()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 278
    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getUserUnlockMode()Z

    move-result v2

    .line 282
    .local v2, enableIt:Z
    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getFotaPassword()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, password:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, entry:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_22

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8a

    :cond_22
    move v6, v8

    .line 293
    .local v6, isNullPassword:Z
    :goto_23
    if-eqz v2, :cond_8c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8c

    invoke-virtual {v7, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8c

    move v5, v8

    .line 295
    .local v5, isCorrectPassword:Z
    :goto_38
    if-nez v6, :cond_3c

    if-eqz v5, :cond_8e

    .line 296
    :cond_3c
    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getRunning()Z

    move-result v10

    if-eqz v10, :cond_49

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/skfota/SkFotaWriter;->resetScreenLockStateIfUserUnlockAllowed(Landroid/content/Context;)V

    .line 301
    :cond_49
    iget-object v10, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v10, :cond_69

    .line 302
    iget-object v10, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mContext:Landroid/content/Context;

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 303
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_69

    .line 304
    const-string v10, "SkyFOTAUnlockScreen"

    const-string v11, "hideSoftInputFromWindow in verifyPasswordAndUnlock"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v10, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v4, v10, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 310
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_69
    sput v9, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mFailedAttemptToUnlock:I

    .line 312
    iget-object v9, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v9, v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 313
    iget-object v8, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 314
    iget-object v8, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 335
    :goto_82
    iget-object v8, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void

    .end local v5           #isCorrectPassword:Z
    .end local v6           #isNullPassword:Z
    :cond_8a
    move v6, v9

    .line 292
    goto :goto_23

    .restart local v6       #isNullPassword:Z
    :cond_8c
    move v5, v9

    .line 293
    goto :goto_38

    .line 324
    .restart local v5       #isCorrectPassword:Z
    :cond_8e
    sget v8, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mFailedAttemptToUnlock:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mFailedAttemptToUnlock:I

    .line 325
    sget v8, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mFailedAttemptToUnlock:I

    rem-int/lit8 v8, v8, 0x5

    if-nez v8, :cond_a3

    .line 328
    iget-object v8, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 329
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->handleAttemptLockout(J)V

    .line 331
    .end local v0           #deadline:J
    :cond_a3
    iget-object v8, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mContext:Landroid/content/Context;

    const v10, 0x104030f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_82
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->cleanUp()V

    .line 274
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 371
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 373
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_17

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1c

    .line 375
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 377
    :cond_1c
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_f

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_14

    .line 385
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 387
    :cond_14
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 396
    if-eqz p2, :cond_8

    const/4 v0, 0x6

    if-eq p2, v0, :cond_8

    const/4 v0, 0x5

    if-ne p2, v0, :cond_d

    .line 398
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->verifyPasswordAndUnlock()V

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onFinishInflate()V
    .registers 4

    .prologue
    .line 405
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 407
    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getFotaMessage()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, message:Ljava/lang/String;
    const v2, 0x1020336

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 409
    .local v1, userMsgLabel:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_9

    const/4 v0, 0x4

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 392
    return-void

    .line 391
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 239
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 8

    .prologue
    .line 243
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mResuming:Z

    .line 245
    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 248
    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getFotaMessage()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, message:Ljava/lang/String;
    const v5, 0x1020336

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 250
    .local v4, userMsgLabel:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 255
    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getUserUnlockMode()Z

    move-result v2

    .line 256
    .local v2, enableIt:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 257
    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 260
    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 261
    .local v0, deadline:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_41

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->handleAttemptLockout(J)V

    .line 264
    :cond_41
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mResuming:Z

    .line 265
    return-void
.end method
