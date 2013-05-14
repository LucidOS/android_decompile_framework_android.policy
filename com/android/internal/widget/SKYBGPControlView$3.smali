.class Lcom/android/internal/widget/SKYBGPControlView$3;
.super Ljava/lang/Object;
.source "SKYBGPControlView.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


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
    .line 356
    iput-object p1, p0, Lcom/android/internal/widget/SKYBGPControlView$3;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$3;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$3;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x10804a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$3;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView$3;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    :cond_27
    return-void
.end method
