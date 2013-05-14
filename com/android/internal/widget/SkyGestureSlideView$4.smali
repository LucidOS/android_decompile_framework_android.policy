.class Lcom/android/internal/widget/SkyGestureSlideView$4;
.super Ljava/lang/Object;
.source "SkyGestureSlideView.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyGestureSlideView;->createSubView(Landroid/content/Context;)V
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
    .line 124
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureSlideView$4;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .registers 5

    .prologue
    .line 136
    const-string v0, "ROSA"

    const-string v1, "onScrollEnded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$4;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$200(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    return-void
.end method

.method public onScrollStarted()V
    .registers 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$4;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$4;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10806e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :goto_18
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$4;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$200(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    return-void

    .line 129
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView$4;->this$0:Lcom/android/internal/widget/SkyGestureSlideView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideView;->access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10806e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_18
.end method
