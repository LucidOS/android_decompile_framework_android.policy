.class Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$4;->onSimLockChangedResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$4;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iput p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 556
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_13

    .line 557
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->hide()V

    .line 559
    :cond_13
    iget v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->val$result:I

    if-nez v6, :cond_b9

    .line 561
    const-string v6, "SimUnlockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPin - mUpdateMonitor.getSimState()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v6, v7, :cond_60

    .line 565
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v10, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 567
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateHeaderTitle()V

    .line 635
    :goto_5f
    return-void

    .line 573
    :cond_60
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 574
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x10900f5

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v8, 0x1020441

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 577
    .local v3, layout:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 578
    .local v4, text:Landroid/widget/TextView;
    const v6, 0x1040303

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 580
    new-instance v5, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 581
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 582
    const/16 v6, 0x10

    invoke-virtual {v5, v6, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 583
    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 584
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 588
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 589
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_5f

    .line 592
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/View;
    .end local v4           #text:Landroid/widget/TextView;
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_b9
    iget v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->val$result:I

    if-ne v6, v9, :cond_171

    .line 610
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getRemainCount()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v7

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 611
    const-string v6, "SimUnlockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSimLockChangedResponse()  mRemainPinCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v6

    if-lez v6, :cond_152

    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_152

    .line 617
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v7, 0x1040531

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, ResultPinString:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v7, v7, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v7, 0x1040530

    invoke-virtual {v6, v7, v1, v10}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    .line 621
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateHeaderTitle()V

    .line 630
    .end local v0           #ResultPinString:Ljava/lang/String;
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_134
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iput v10, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 632
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v7, 0x4e20

    invoke-interface {v6, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto/16 :goto_5f

    .line 623
    :cond_152
    const-string v6, "SimUnlockScreen"

    const-string v7, "[checkPin] PIN Input 3 Times error!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v7, 0x104052a

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v8, v8, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v9, 0x104052b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    goto :goto_134

    .line 628
    :cond_171
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v6, v6, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x1040301

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_134
.end method
