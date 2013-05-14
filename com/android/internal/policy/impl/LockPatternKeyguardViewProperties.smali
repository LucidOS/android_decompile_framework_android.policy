.class public Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
.super Ljava/lang/Object;
.source "LockPatternKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 3
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 49
    return-void
.end method

.method private isSimPinSecure()Z
    .registers 7

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, isSimPinSecure:Z
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 83
    .local v2, numPhones:I
    new-array v3, v2, [Lcom/android/internal/telephony/IccCard$State;

    .line 84
    .local v3, simState:[Lcom/android/internal/telephony/IccCard$State;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v2, :cond_5b

    .line 85
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    aput-object v4, v3, v0

    .line 87
    if-nez v1, :cond_58

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v4

    if-nez v4, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_58

    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_52

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPersoPPKBlocked()Z

    move-result v4

    if-nez v4, :cond_58

    :cond_52
    aget-object v4, v3, v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_5c

    :cond_58
    const/4 v1, 0x1

    .line 98
    :goto_59
    if-eqz v1, :cond_5e

    .line 100
    :cond_5b
    return v1

    .line 87
    :cond_5c
    const/4 v1, 0x0

    goto :goto_59

    .line 84
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .registers 11
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 55
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 59
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    goto :goto_15
.end method

.method public isSecure()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSimPinSecure()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/android/internal/skfota/SkFotaWriter;->getRunning()Z

    move-result v1

    if-ne v1, v0, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
