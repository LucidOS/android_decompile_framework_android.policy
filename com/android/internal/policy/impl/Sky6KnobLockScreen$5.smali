.class Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;
.super Ljava/lang/Object;
.source "Sky6KnobLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->initLayout()V
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
    .line 360
    iput-object p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    .line 397
    :cond_8
    :goto_8
    const/4 v0, 0x1

    return v0

    .line 365
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    const/4 v1, 0x3

    #setter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mCurrentFlipMode:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$502(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;I)I

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    #calls: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedCommStart(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$600(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;FF)V

    goto :goto_8

    .line 372
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    #calls: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedComm(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$700(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;FF)V

    goto :goto_8

    .line 376
    :pswitch_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #setter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$402(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #setter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$302(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z

    .line 381
    :pswitch_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$300(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mFlipPanelBeingVanished:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$400(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #setter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mRunningFlipPanelAnimation:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$302(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;Z)Z

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$900(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5$1;-><init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    :cond_6b
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$5;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #calls: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->animateMissedCommStop()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$1000(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V

    goto :goto_8

    .line 363
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_a
        :pswitch_46
        :pswitch_2e
        :pswitch_3c
    .end packed-switch
.end method
