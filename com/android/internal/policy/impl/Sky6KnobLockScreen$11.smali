.class Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;
.super Ljava/lang/Object;
.source "Sky6KnobLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Sky6KnobLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 2401
    iput-object p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2404
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1100(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2405
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$900(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2408
    :cond_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mNeedToShowFullChargedAlarm:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1100(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mShowingBatteryInfo:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1200(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2439
    :cond_33
    :goto_33
    return-void

    .line 2412
    :cond_34
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_9c

    .line 2413
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2415
    :cond_50
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "toggle full charged alarm: flip panel activated... skip toggle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_33

    .line 2435
    :catch_58
    move-exception v0

    .line 2437
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Sky6KnobLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in mFullChargedAlarmTimerTask.run() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2420
    .end local v0           #e:Ljava/lang/Exception;
    :cond_76
    :try_start_76
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "toggle full charged alarm: show full charged alarm panel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2423
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1500(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2424
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_33

    .line 2427
    :cond_9c
    const-string v2, "Sky6KnobLockScreen"

    const-string v3, "toggle full charged alarm: hide full charged alarm panel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFullChargedAlarmPanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2429
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1600(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatus()Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v1

    .line 2431
    .local v1, status:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->shouldShowStatusLines()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 2432
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFuelGaugePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2433
    :cond_c7
    iget-object v2, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$11;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mTimePanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1500(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_d1} :catch_58

    goto/16 :goto_33
.end method
