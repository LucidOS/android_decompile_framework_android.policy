.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BgpControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBGPStateChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "playing"
    .parameter "artistName"
    .parameter "albumName"
    .parameter "trackName"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 1415
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 1417
    const-string v2, "KeyguardStatusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBGPStateChanged playing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " artistName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " albumName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trackName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBGPPlayStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getReturnedPauseCmd()Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v0, 0x1

    .line 1427
    .local v0, pausedByBgpSelf:Z
    :goto_5b
    if-nez p1, :cond_5f

    if-eqz v0, :cond_80

    .line 1428
    :cond_5f
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/SKYBGPControlView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_74

    .line 1429
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SKYBGPControlView;->setVisibility(I)V

    .line 1438
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/SKYBGPControlView;->setBGPState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .end local v0           #pausedByBgpSelf:Z
    :goto_7d
    return-void

    :cond_7e
    move v0, v1

    .line 1424
    goto :goto_5b

    .line 1432
    .restart local v0       #pausedByBgpSelf:Z
    :cond_80
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/SKYBGPControlView;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_74

    .line 1433
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/SKYBGPControlView;->close()V

    .line 1434
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$9;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBGPController:Lcom/android/internal/widget/SKYBGPControlView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/SKYBGPControlView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SKYBGPControlView;->setVisibility(I)V

    goto :goto_74

    .line 1440
    .end local v0           #pausedByBgpSelf:Z
    :cond_9f
    const-string v1, "KeyguardStatusView"

    const-string v2, "Cannot find BGP Controller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method
