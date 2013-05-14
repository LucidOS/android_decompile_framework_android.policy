.class Lcom/android/internal/widget/SKYBGPControlView$5;
.super Ljava/lang/Object;
.source "SKYBGPControlView.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SKYBGPControlView;->createSubView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SKYBGPControlView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SKYBGPControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .registers 5

    .prologue
    .line 391
    const-string v0, "SKYBGPControlView"

    const-string v1, "onScrollEnded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    :cond_1c
    return-void
.end method

.method public onScrollStarted()V
    .registers 5

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_11

    .line 388
    :cond_10
    :goto_10
    return-void

    .line 378
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10804a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    :goto_2a
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10

    .line 382
    :cond_40
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$5;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108049f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2a
.end method
