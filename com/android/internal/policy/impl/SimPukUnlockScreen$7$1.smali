.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->onSimLockChangedResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iput p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const v12, 0x1040532

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 575
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 576
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->hide()V

    .line 578
    :cond_1a
    iget v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->val$result:I

    if-nez v7, :cond_bf

    .line 580
    const-string v7, "SimPukUnlockScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkPin - mUpdateMonitor.getSimState()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v9, v9, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 583
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x10900f5

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const v9, 0x1020441

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 586
    .local v4, layout:Landroid/view/View;
    const v7, 0x102000b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 587
    .local v5, text:Landroid/widget/TextView;
    const v7, 0x1040525

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 589
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 590
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6, v11}, Landroid/widget/Toast;->setDuration(I)V

    .line 591
    const/16 v7, 0x10

    invoke-virtual {v6, v7, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 592
    invoke-virtual {v6, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 593
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 597
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_a8

    .line 599
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 681
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #text:Landroid/widget/TextView;
    .end local v6           #toast:Landroid/widget/Toast;
    :goto_a7
    return-void

    .line 606
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #layout:Landroid/view/View;
    .restart local v5       #text:Landroid/widget/TextView;
    .restart local v6       #toast:Landroid/widget/Toast;
    :cond_a8
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 607
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_a7

    .line 610
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #text:Landroid/widget/TextView;
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_bf
    iget v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->val$result:I

    if-ne v7, v11, :cond_1cc

    .line 645
    :try_start_c3
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v8

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRemainPukCount:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$802(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I

    .line 646
    const-string v7, "SimPukUnlockScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSimLockChangedResponse() mRemainPukCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v9, v9, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRemainPukCount:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRemainPukCount:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v7

    if-lez v7, :cond_1ac

    .line 649
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040533

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, ResultPukString:Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_195

    .line 653
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v9, v9, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRemainPukCount:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v9, v9, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRemainPukCount:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, displayMessage:Ljava/lang/String;
    :goto_142
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const v8, 0x1040532

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v1, v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPopup(ILjava/lang/String;I)V

    .line 661
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateHeaderTitle()V
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_154} :catch_1bf

    .line 673
    .end local v0           #ResultPukString:Ljava/lang/String;
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_154
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText2:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 678
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v7

    const/16 v8, 0x4e20

    invoke-interface {v7, v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto/16 :goto_a7

    .line 657
    .restart local v0       #ResultPukString:Ljava/lang/String;
    :cond_195
    const/4 v7, 0x1

    :try_start_196
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v9, v9, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRemainPukCount:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #displayMessage:Ljava/lang/String;
    goto :goto_142

    .line 663
    .end local v0           #ResultPukString:Ljava/lang/String;
    .end local v1           #displayMessage:Ljava/lang/String;
    :cond_1ac
    const-string v7, "SimPukUnlockScreen"

    const-string v8, "[checkPuk] PUK Input 10 Times error!!! goToLockScreen"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_196 .. :try_end_1be} :catch_1bf

    goto :goto_154

    .line 666
    :catch_1bf
    move-exception v2

    .line 667
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_154

    .line 671
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_1cc
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x1040302

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_154
.end method
