.class Lcom/android/internal/policy/impl/FaceUnlock$2;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "FaceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FaceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FaceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FaceUnlock;)V
    .registers 2
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    return-void
.end method

.method public exposeFallback()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 6
    .parameter "millis"

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    return-void
.end method

.method public reportFailedAttempt()V
    .registers 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    return-void
.end method

.method public unlock()V
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceUnlock$2;->this$0:Lcom/android/internal/policy/impl/FaceUnlock;

    #getter for: Lcom/android/internal/policy/impl/FaceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/FaceUnlock;->access$100(Lcom/android/internal/policy/impl/FaceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 529
    return-void
.end method
