.class Lcom/android/internal/widget/SkyGestureSlideContentsView$1;
.super Ljava/lang/Object;
.source "SkyGestureSlideContentsView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyGestureSlideContentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyGestureSlideContentsView;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static {}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "GestureSlideContentsView"

    const-string v1, "start onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 66
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-static {}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "GestureSlideContentsView"

    const-string v1, "start onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 73
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 75
    :cond_20
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2b

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->smoothScrollTo(II)V

    .line 81
    :goto_2a
    return v2

    .line 78
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mScreenWidth:I
    invoke-static {v1}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$200(Lcom/android/internal/widget/SkyGestureSlideContentsView;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->smoothScrollTo(II)V

    goto :goto_2a
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 86
    invoke-static {}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GestureSlideContentsView"

    const-string v1, "start onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_d
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-static {}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "GestureSlideContentsView"

    const-string v1, "start onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    #getter for: Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 95
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;->this$0:Lcom/android/internal/widget/SkyGestureSlideContentsView;

    float-to-int v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->smoothScrollBy(II)V

    .line 97
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 102
    invoke-static {}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GestureSlideContentsView"

    const-string v1, "start onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_d
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 107
    invoke-static {}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "GestureSlideContentsView"

    const-string v1, "start onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
