.class Lcom/android/internal/policy/impl/SimUnlockScreen$5;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockPCKChangedResponse(ZI)V
    .registers 11
    .parameter "success"
    .parameter "nRemindCnt"

    .prologue
    const v7, 0x104053a

    const v6, 0x104052a

    const/4 v5, 0x0

    .line 683
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_14

    .line 684
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 687
    :cond_14
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPck - new CheckSimPck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-eqz p1, :cond_a1

    .line 690
    const-string v2, "SimUnlockScreen"

    const-string v3, "checkPck - new CheckSimPck - success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 693
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pck_retry_count"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    :cond_4d
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$502(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    .line 696
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_82

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_82

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_82

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_8a

    .line 702
    :cond_82
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 739
    :cond_89
    :goto_89
    return-void

    .line 709
    :cond_8a
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->isSimLimitedStatus()Z

    move-result v2

    if-nez v2, :cond_89

    .line 711
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 712
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_89

    .line 719
    :cond_a1
    const-string v2, "SimUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPck - new CheckSimPck - fail : nRemindCnt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x1040539

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 723
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 725
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, PckString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, resultText:Ljava/lang/String;
    if-lez p2, :cond_e9

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v2, v6, v1, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    .line 735
    .end local v0           #PckString:Ljava/lang/String;
    .end local v1           #resultText:Ljava/lang/String;
    :cond_e9
    :goto_e9
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v5, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 737
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x4e20

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_89

    .line 732
    :cond_100
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    goto :goto_e9
.end method
