.class public Lcom/android/internal/widget/SkyVisualSlidingTab;
.super Landroid/view/ViewGroup;
.source "SkyVisualSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;,
        Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

.field private mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;

.field private mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

.field private mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

.field private mThreshold:F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;

.field thresholdReached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 458
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const v8, 0x10806f9

    const v2, 0x10806f6

    const/4 v1, 0x0

    const v4, 0x108086a

    .line 464
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldLeftOnTransition:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldRightOnTransition:Z

    .line 70
    iput v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mGrabbedState:I

    .line 71
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    .line 93
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualSlidingTab$1;-><init>(Lcom/android/internal/widget/SkyVisualSlidingTab;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 467
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    .line 469
    sget-object v0, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 470
    .local v6, a:Landroid/content/res/TypedArray;
    invoke-virtual {v6, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOrientation:I

    .line 471
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 474
    .local v7, r:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    .line 476
    const-string v0, "RYU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    const/high16 v1, 0x3fc0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7d

    .line 479
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v3, 0x10806f5

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIIF)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 484
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v3, 0x10806f5

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIIF)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 519
    :cond_7c
    :goto_7c
    return-void

    .line 490
    :cond_7d
    iget v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a1

    .line 492
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v3, 0x10806f7

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIIF)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 497
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v3, 0x10806f8

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIIF)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    goto :goto_7c

    .line 503
    :cond_a1
    iget v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    const/high16 v1, 0x4040

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7c

    .line 505
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v3, 0x10806f7

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIIF)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 510
    new-instance v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v3, 0x10806f8

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIIF)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    goto :goto_7c
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyVisualSlidingTab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/widget/SkyVisualSlidingTab;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SkyVisualSlidingTab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->resetView()V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4
    .parameter "whichHandle"

    .prologue
    .line 998
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab;->vibrate(J)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_e

    .line 1000
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 1002
    :cond_e
    return-void
.end method

.method private isHorizontal()Z
    .registers 2

    .prologue
    .line 875
    iget v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1018
    const-string v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void
.end method

.method private moveHandle(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 894
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 895
    .local v3, handle:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$400(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 896
    .local v0, content:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 897
    float-to-int v4, p1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 898
    .local v1, deltaX:I
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 899
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 905
    .end local v1           #deltaX:I
    :goto_26
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->invalidate()V

    .line 906
    return-void

    .line 901
    :cond_2a
    float-to-int v4, p2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 902
    .local v2, deltaY:I
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 903
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    goto :goto_26
.end method

.method private onAnimationDone()V
    .registers 2

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->resetView()V

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z

    .line 867
    return-void
.end method

.method private resetView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->reset(Z)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->reset(Z)V

    .line 882
    return-void
.end method

.method private setGrabbedState(I)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 1009
    iget v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    .line 1010
    iput p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mGrabbedState:I

    .line 1011
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;

    if-eqz v0, :cond_11

    .line 1012
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1015
    :cond_11
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 977
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 978
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 981
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 982
    monitor-exit p0

    return-void

    .line 977
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private withinView(FFLandroid/view/View;)Z
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "view"

    .prologue
    const/high16 v1, -0x3db8

    .line 870
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_17

    cmpl-float v0, p2, v1

    if-lez v0, :cond_17

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2c

    :cond_17
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2e

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2e

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->removeAllViews()V

    .line 1051
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    const v7, 0x3f2aaaab

    const v8, 0x3eaaaaaa

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 556
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 557
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 559
    .local v6, y:F
    iget-boolean v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z

    if-eqz v11, :cond_1a

    move v7, v9

    .line 598
    :goto_19
    return v7

    .line 563
    :cond_1a
    iget-object v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 564
    .local v1, leftHandle:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 565
    iget-object v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v12, v5

    float-to-int v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 567
    .local v2, leftHit:Z
    iget-object v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    .line 568
    .local v3, rightHandle:Landroid/view/View;
    iget-object v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 569
    iget-object v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v12, v5

    float-to-int v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 571
    .local v4, rightHit:Z
    iget-boolean v11, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    if-nez v11, :cond_4a

    if-nez v2, :cond_4a

    if-nez v4, :cond_4a

    move v7, v9

    .line 572
    goto :goto_19

    .line 575
    :cond_4a
    packed-switch v0, :pswitch_data_96

    :goto_4d
    move v7, v10

    .line 598
    goto :goto_19

    .line 577
    :pswitch_4f
    iput-boolean v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    .line 578
    iput-boolean v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    .line 579
    const-wide/16 v11, 0x14

    invoke-direct {p0, v11, v12}, Lcom/android/internal/widget/SkyVisualSlidingTab;->vibrate(J)V

    .line 580
    if-eqz v2, :cond_7f

    .line 581
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 582
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 583
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v9

    if-eqz v9, :cond_7d

    :goto_68
    iput v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mThreshold:F

    .line 584
    invoke-direct {p0, v10}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setGrabbedState(I)V

    .line 591
    :goto_6d
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setState(I)V

    .line 592
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->showTarget()V

    .line 593
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v7}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->hide()V

    goto :goto_4d

    :cond_7d
    move v7, v8

    .line 583
    goto :goto_68

    .line 586
    :cond_7f
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 587
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iput-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 588
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v9

    if-eqz v9, :cond_94

    :goto_8d
    iput v8, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mThreshold:F

    .line 589
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setGrabbedState(I)V

    goto :goto_6d

    :cond_94
    move v8, v7

    .line 588
    goto :goto_8d

    .line 575
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_4f
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 886
    if-nez p1, :cond_3

    .line 891
    :goto_2
    return-void

    .line 889
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v5, 0x0

    :goto_c
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->layout(IIIII)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v5, 0x1

    :goto_1c
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->layout(IIIII)V

    goto :goto_2

    .line 889
    :cond_24
    const/4 v5, 0x3

    goto :goto_c

    .line 890
    :cond_26
    const/4 v5, 0x2

    goto :goto_1c
.end method

.method protected onMeasure(II)V
    .registers 17
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 523
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 524
    .local v8, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 526
    .local v9, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 527
    .local v1, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 529
    .local v2, heightSpecSize:I
    if-eqz v8, :cond_14

    if-nez v1, :cond_43

    .line 530
    :cond_14
    const-string v10, "SlidingTab"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SlidingTab cannot have UNSPECIFIED MeasureSpec(wspec="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hspec="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "SlidingTabstack:"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    :cond_43
    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->measure()V

    .line 536
    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->measure()V

    .line 537
    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->getTabWidth()I

    move-result v4

    .line 538
    .local v4, leftTabWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->getTabWidth()I

    move-result v6

    .line 539
    .local v6, rightTabWidth:I
    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->getTabHeight()I

    move-result v3

    .line 540
    .local v3, leftTabHeight:I
    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->getTabHeight()I

    move-result v5

    .line 543
    .local v5, rightTabHeight:I
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_79

    .line 544
    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 545
    .local v7, width:I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 550
    .local v0, height:I
    :goto_75
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setMeasuredDimension(II)V

    .line 551
    return-void

    .line 547
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_79
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 548
    .restart local v7       #width:I
    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_75
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 647
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 648
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 650
    .local v5, y:F
    iget-boolean v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    if-eqz v9, :cond_10c

    .line 651
    packed-switch v0, :pswitch_data_17c

    .line 764
    :cond_16
    :goto_16
    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    if-nez v6, :cond_20

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_21

    :cond_20
    move v8, v7

    :cond_21
    return v8

    .line 653
    :pswitch_22
    invoke-direct {p0, v4, v5, p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 654
    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SkyVisualSlidingTab;->moveHandle(FF)V

    .line 655
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_77

    move v2, v4

    .line 662
    .local v2, position:F
    :goto_32
    iget v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mDensity:F

    const/high16 v9, 0x4000

    cmpl-float v6, v6, v9

    if-nez v6, :cond_95

    .line 664
    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    iget v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x28

    :goto_52
    int-to-float v6, v6

    mul-float v3, v9, v6

    .line 674
    .local v3, target:F
    :goto_55
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 675
    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    cmpl-float v6, v2, v3

    if-lez v6, :cond_aa

    move v6, v7

    :goto_6a
    iput-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->thresholdReached:Z

    .line 681
    :goto_6c
    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    if-nez v6, :cond_16

    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->thresholdReached:Z

    if-eqz v6, :cond_16

    .line 682
    iput-boolean v8, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    goto :goto_16

    .end local v2           #position:F
    .end local v3           #target:F
    :cond_77
    move v2, v5

    .line 655
    goto :goto_32

    .line 664
    .restart local v2       #position:F
    :cond_79
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getHeight()I

    move-result v6

    goto :goto_52

    :cond_7e
    iget v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x50

    :goto_8c
    int-to-float v6, v6

    mul-float v3, v9, v6

    goto :goto_55

    :cond_90
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getHeight()I

    move-result v6

    goto :goto_8c

    .line 670
    :cond_95
    iget v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getWidth()I

    move-result v6

    :goto_a1
    int-to-float v6, v6

    mul-float v3, v9, v6

    .restart local v3       #target:F
    goto :goto_55

    .end local v3           #target:F
    :cond_a5
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getHeight()I

    move-result v6

    goto :goto_a1

    .restart local v3       #target:F
    :cond_aa
    move v6, v8

    .line 675
    goto :goto_6a

    :cond_ac
    cmpg-float v6, v2, v3

    if-gez v6, :cond_b2

    move v6, v7

    goto :goto_6a

    :cond_b2
    move v6, v8

    goto :goto_6a

    .line 678
    :cond_b4
    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    cmpg-float v6, v2, v3

    if-gez v6, :cond_c6

    move v6, v7

    :goto_c3
    iput-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->thresholdReached:Z

    goto :goto_6c

    :cond_c6
    move v6, v8

    goto :goto_c3

    :cond_c8
    cmpl-float v6, v2, v3

    if-lez v6, :cond_ce

    move v6, v7

    goto :goto_c3

    :cond_ce
    move v6, v8

    goto :goto_c3

    .line 700
    .end local v2           #position:F
    .end local v3           #target:F
    :cond_d0
    :pswitch_d0
    iget-boolean v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    if-nez v9, :cond_102

    iget-boolean v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->thresholdReached:Z

    if-eqz v9, :cond_102

    .line 702
    iput-boolean v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    .line 703
    iput-boolean v8, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    .line 704
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v9, :cond_16

    .line 705
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setState(I)V

    .line 706
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 707
    .local v1, isLeft:Z
    if-eqz v1, :cond_f0

    move v6, v7

    :cond_f0
    invoke-direct {p0, v6}, Lcom/android/internal/widget/SkyVisualSlidingTab;->dispatchTriggerEvent(I)V

    .line 710
    if-eqz v1, :cond_ff

    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldLeftOnTransition:Z

    :goto_f7
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/SkyVisualSlidingTab;->startAnimating(Z)V

    .line 711
    invoke-direct {p0, v8}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setGrabbedState(I)V

    goto/16 :goto_16

    .line 710
    :cond_ff
    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldRightOnTransition:Z

    goto :goto_f7

    .line 715
    .end local v1           #isLeft:Z
    :cond_102
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->trackingReset()V

    goto/16 :goto_16

    .line 719
    :pswitch_107
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->trackingReset()V

    goto/16 :goto_16

    .line 724
    :cond_10c
    packed-switch v0, :pswitch_data_186

    goto/16 :goto_16

    .line 740
    :pswitch_111
    iget-boolean v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    if-nez v9, :cond_177

    iget-boolean v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->thresholdReached:Z

    if-eqz v9, :cond_177

    .line 742
    iput-boolean v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    .line 743
    iput-boolean v8, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    .line 745
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v9, :cond_16

    .line 746
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setState(I)V

    .line 747
    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 748
    .restart local v1       #isLeft:Z
    if-eqz v1, :cond_131

    move v6, v7

    :cond_131
    invoke-direct {p0, v6}, Lcom/android/internal/widget/SkyVisualSlidingTab;->dispatchTriggerEvent(I)V

    .line 751
    if-eqz v1, :cond_174

    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldLeftOnTransition:Z

    :goto_138
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/SkyVisualSlidingTab;->startAnimating(Z)V

    .line 752
    invoke-direct {p0, v8}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setGrabbedState(I)V

    goto/16 :goto_16

    .line 726
    .end local v1           #isLeft:Z
    :pswitch_140
    const/high16 v6, -0x3e60

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_14c

    const/high16 v6, 0x4348

    cmpl-float v6, v5, v6

    if-lez v6, :cond_151

    .line 727
    :cond_14c
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->trackingReset()V

    goto/16 :goto_16

    .line 729
    :cond_151
    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v6, :cond_16

    .line 730
    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    iget-object v9, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16a

    .line 731
    const v6, 0x43de8000

    cmpg-float v6, v4, v6

    if-gez v6, :cond_16

    iput-boolean v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    goto/16 :goto_16

    .line 733
    :cond_16a
    const/high16 v6, 0x4387

    cmpl-float v6, v4, v6

    if-lez v6, :cond_16

    iput-boolean v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    goto/16 :goto_16

    .line 751
    .restart local v1       #isLeft:Z
    :cond_174
    iget-boolean v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldRightOnTransition:Z

    goto :goto_138

    .line 757
    .end local v1           #isLeft:Z
    :cond_177
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->trackingReset()V

    goto/16 :goto_16

    .line 651
    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_22
        :pswitch_107
    .end packed-switch

    .line 724
    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_111
        :pswitch_140
    .end packed-switch
.end method

.method public reset(Z)V
    .registers 3
    .parameter "animate"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->reset(Z)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->reset(Z)V

    .line 630
    if-nez p1, :cond_f

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z

    .line 633
    :cond_f
    return-void
.end method

.method public resetSlider()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 605
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    .line 606
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    .line 607
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v0, :cond_14

    .line 609
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->show(Z)V

    .line 610
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 612
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v0, :cond_24

    .line 613
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->reset(Z)V

    .line 614
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->hideTarget()V

    .line 615
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 617
    :cond_24
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .registers 3
    .parameter "holdLeft"
    .parameter "holdRight"

    .prologue
    .line 969
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldLeftOnTransition:Z

    .line 970
    iput-boolean p2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mHoldRightOnTransition:Z

    .line 971
    return-void
.end method

.method public setLeftHintText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 934
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setHintText(I)V

    .line 936
    :cond_b
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .registers 6
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setIcon(I)V

    .line 921
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTarget(I)V

    .line 922
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 923
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 924
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mLeftSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->updateDrawableStates()V

    .line 925
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;

    .line 991
    return-void
.end method

.method public setRightHintText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 964
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setHintText(I)V

    .line 966
    :cond_b
    return-void
.end method

.method public setRightSlideMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 1023
    packed-switch p1, :pswitch_data_1e

    .line 1035
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v1, 0x10806f9

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 1040
    :goto_b
    return-void

    .line 1027
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v1, 0x10806fa

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTabBackgroundResource(I)V

    goto :goto_b

    .line 1031
    :pswitch_15
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const v1, 0x10806fb

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTabBackgroundResource(I)V

    goto :goto_b

    .line 1023
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
    .end packed-switch
.end method

.method public setRightTabResources(IIII)V
    .registers 6
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setIcon(I)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTarget(I)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setBarBackgroundResource(I)V

    .line 953
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setTabBackgroundResource(I)V

    .line 954
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->updateDrawableStates()V

    .line 955
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->reset(Z)V

    .line 641
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 642
    return-void
.end method

.method startAnimating(Z)V
    .registers 25
    .parameter "holdAfter"

    .prologue
    .line 783
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SkyVisualSlidingTab;->mAnimating:Z

    .line 786
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 787
    .local v12, slider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 790
    .local v10, other:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->isHorizontal()Z

    move-result v19

    if-eqz v19, :cond_cb

    .line 791
    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getRight()I

    move-result v11

    .line 792
    .local v11, right:I
    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    .line 793
    .local v18, width:I
    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    .line 794
    .local v9, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getWidth()I

    move-result v17

    .line 795
    .local v17, viewWidth:I
    if-eqz p1, :cond_c0

    const/4 v8, 0x0

    .line 796
    .local v8, holdOffset:I
    :goto_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c4

    add-int v19, v11, v17

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v5, v0

    .line 798
    .local v5, dx:I
    :goto_4a
    const/4 v6, 0x0

    .line 809
    .end local v9           #left:I
    .end local v11           #right:I
    .end local v17           #viewWidth:I
    .end local v18           #width:I
    .local v6, dy:I
    :goto_4b
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 810
    .local v14, trans1:Landroid/view/animation/Animation;
    const-wide/16 v19, 0xfa

    move-wide/from16 v0, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 811
    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 812
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 813
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 814
    .local v15, trans2:Landroid/view/animation/Animation;
    const-wide/16 v19, 0xfa

    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 815
    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 816
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 818
    new-instance v19, Lcom/android/internal/widget/SkyVisualSlidingTab$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SkyVisualSlidingTab$2;-><init>(Lcom/android/internal/widget/SkyVisualSlidingTab;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 860
    invoke-virtual {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->hideTarget()V

    .line 861
    invoke-virtual {v12, v14, v15}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 862
    return-void

    .end local v5           #dx:I
    .end local v6           #dy:I
    .end local v8           #holdOffset:I
    .end local v14           #trans1:Landroid/view/animation/Animation;
    .end local v15           #trans2:Landroid/view/animation/Animation;
    .restart local v9       #left:I
    .restart local v11       #right:I
    .restart local v17       #viewWidth:I
    .restart local v18       #width:I
    :cond_c0
    move/from16 v8, v18

    .line 795
    goto/16 :goto_35

    .line 796
    .restart local v8       #holdOffset:I
    :cond_c4
    sub-int v19, v17, v9

    add-int v19, v19, v17

    sub-int v5, v19, v8

    goto :goto_4a

    .line 800
    .end local v8           #holdOffset:I
    .end local v9           #left:I
    .end local v11           #right:I
    .end local v17           #viewWidth:I
    .end local v18           #width:I
    :cond_cb
    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getTop()I

    move-result v13

    .line 801
    .local v13, top:I
    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 802
    .local v4, bottom:I
    #getter for: Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v12}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    .line 803
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getHeight()I

    move-result v16

    .line 804
    .local v16, viewHeight:I
    if-eqz p1, :cond_ff

    const/4 v8, 0x0

    .line 805
    .restart local v8       #holdOffset:I
    :goto_ea
    const/4 v5, 0x0

    .line 806
    .restart local v5       #dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mRightSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_101

    add-int v19, v13, v16

    sub-int v6, v19, v8

    .restart local v6       #dy:I
    :goto_fd
    goto/16 :goto_4b

    .end local v5           #dx:I
    .end local v6           #dy:I
    .end local v8           #holdOffset:I
    :cond_ff
    move v8, v7

    .line 804
    goto :goto_ea

    .line 806
    .restart local v5       #dx:I
    .restart local v8       #holdOffset:I
    :cond_101
    sub-int v19, v16, v4

    add-int v19, v19, v16

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v6, v0

    goto :goto_fd
.end method

.method trackingReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 768
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTracking:Z

    .line 769
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mTriggered:Z

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v0, :cond_10

    .line 771
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->show(Z)V

    .line 773
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    if-eqz v0, :cond_1e

    .line 774
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->reset(Z)V

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->hideTarget()V

    .line 777
    :cond_1e
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 778
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualSlidingTab;->mOtherSlider:Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;

    .line 779
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setGrabbedState(I)V

    .line 780
    return-void
.end method
