.class Lcom/android/internal/widget/SkyGestureSlideView$1;
.super Landroid/os/Handler;
.source "SkyGestureSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyGestureSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyGestureSlideView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyGestureSlideView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7c

    .line 71
    :cond_5
    :goto_5
    return-void

    .line 51
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    const-string v0, "SkyGestureSlideView"

    const-string v1, "mHandler.what = ACTION_CLOSE_SLIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    goto :goto_5

    .line 58
    :pswitch_23
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10806e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 62
    :cond_48
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10806e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 64
    :cond_55
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10806e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 67
    :cond_6e
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10806e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 49
    nop

    :pswitch_data_7c
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_23
    .end packed-switch
.end method
