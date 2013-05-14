.class Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;
.super Ljava/lang/Object;
.source "SkyGestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyGestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutRunnable"
.end annotation


# instance fields
.field fireActionPerformed:Z

.field resetMultipleStrokes:Z

.field final synthetic this$0:Lcom/android/internal/widget/SkyGestureOverlayView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/SkyGestureOverlayView;)V
    .registers 2
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/SkyGestureOverlayView;Lcom/android/internal/widget/SkyGestureOverlayView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 787
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;-><init>(Lcom/android/internal/widget/SkyGestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xff

    const/4 v8, 0x1

    const/high16 v9, 0x3f80

    const/4 v7, 0x0

    .line 792
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$100(Lcom/android/internal/widget/SkyGestureOverlayView;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 793
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 794
    .local v3, now:J
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingStart:J
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$200(Lcom/android/internal/widget/SkyGestureOverlayView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 796
    .local v0, duration:J
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$300(Lcom/android/internal/widget/SkyGestureOverlayView;)J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_56

    .line 797
    iget-boolean v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    if-eqz v5, :cond_2e

    .line 798
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #calls: Lcom/android/internal/widget/SkyGestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$400(Lcom/android/internal/widget/SkyGestureOverlayView;)V

    .line 801
    :cond_2e
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v5, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$502(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    .line 802
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z
    invoke-static {v5, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$102(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    .line 803
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v5, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$602(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    .line 804
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$700(Lcom/android/internal/widget/SkyGestureOverlayView;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 805
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;
    invoke-static {v5, v11}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$802(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 806
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #calls: Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v5, v10}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$900(Lcom/android/internal/widget/SkyGestureOverlayView;I)V

    .line 827
    .end local v0           #duration:J
    .end local v3           #now:J
    :goto_50
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    invoke-virtual {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    .line 828
    return-void

    .line 808
    .restart local v0       #duration:J
    .restart local v3       #now:J
    :cond_56
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v5, v8}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$602(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    .line 809
    const/4 v5, 0x0

    long-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J
    invoke-static {v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$300(Lcom/android/internal/widget/SkyGestureOverlayView;)J

    move-result-wide v7

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 811
    .local v2, interpolatedTime:F
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    iget-object v6, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;
    invoke-static {v6}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$1100(Lcom/android/internal/widget/SkyGestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    sub-float v6, v9, v6

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F
    invoke-static {v5, v6}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$1002(Lcom/android/internal/widget/SkyGestureOverlayView;F)F

    .line 812
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    const/high16 v6, 0x437f

    iget-object v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F
    invoke-static {v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$1000(Lcom/android/internal/widget/SkyGestureOverlayView;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v5, v6}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$900(Lcom/android/internal/widget/SkyGestureOverlayView;I)V

    .line 813
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    const-wide/16 v6, 0x10

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 815
    .end local v0           #duration:J
    .end local v2           #interpolatedTime:F
    .end local v3           #now:J
    :cond_95
    iget-boolean v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    if-eqz v5, :cond_9f

    .line 816
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mResetGesture:Z
    invoke-static {v5, v8}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$1202(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    goto :goto_50

    .line 818
    :cond_9f
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #calls: Lcom/android/internal/widget/SkyGestureOverlayView;->fireOnGesturePerformed()V
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$400(Lcom/android/internal/widget/SkyGestureOverlayView;)V

    .line 820
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z
    invoke-static {v5, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$602(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    .line 821
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #getter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;
    invoke-static {v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$700(Lcom/android/internal/widget/SkyGestureOverlayView;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 822
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;
    invoke-static {v5, v11}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$802(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;

    .line 823
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #setter for: Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z
    invoke-static {v5, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$502(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z

    .line 824
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->this$0:Lcom/android/internal/widget/SkyGestureOverlayView;

    #calls: Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V
    invoke-static {v5, v10}, Lcom/android/internal/widget/SkyGestureOverlayView;->access$900(Lcom/android/internal/widget/SkyGestureOverlayView;I)V

    goto :goto_50
.end method
