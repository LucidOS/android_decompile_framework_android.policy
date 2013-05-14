.class public Lcom/android/internal/widget/SkyGestureOverlayView;
.super Landroid/widget/FrameLayout;
.source "SkyGestureOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkyGestureOverlayView$1;,
        Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;,
        Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;,
        Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;,
        Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;
    }
.end annotation


# static fields
.field private static final DITHER_FLAG:Z = true

.field private static final FADE_ANIMATION_RATE:I = 0x10

.field private static final GESTURE_RENDERING_ANTIALIAS:Z = true

.field public static final GESTURE_STROKE_TYPE_MULTIPLE:I = 0x1

.field public static final GESTURE_STROKE_TYPE_SINGLE:I = 0x0

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SkyGestureOverlayView"


# instance fields
.field private mCertainGestureColor:I

.field private mCurrentColor:I

.field private mCurrentGesture:Landroid/gesture/Gesture;

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mFadeDuration:J

.field private mFadeEnabled:Z

.field private mFadeOffset:J

.field private mFadingAlpha:F

.field private mFadingHasStarted:Z

.field private final mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

.field private mFadingStart:J

.field private final mGesturePaint:Landroid/graphics/Paint;

.field private mGestureStrokeAngleThreshold:F

.field private mGestureStrokeLengthThreshold:F

.field private mGestureStrokeSquarenessTreshold:F

.field private mGestureStrokeType:I

.field private mGestureStrokeWidth:F

.field private mGestureVisible:Z

.field private mHandleGestureActions:Z

.field private mInterceptEvents:Z

.field private final mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mInvalidateExtraBorder:I

.field private mIsFadingOut:Z

.field private mIsGesturing:Z

.field private mIsListeningForGestures:Z

.field private final mOnGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturePerformedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnGesturingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private final mPath:Landroid/graphics/Path;

.field private mPreviousWasGesturing:Z

.field private mResetGesture:Z

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalLength:F

.field private mUncertainGestureColor:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 81
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J

    .line 82
    const-wide/16 v0, 0x1a4

    iput-wide v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    .line 88
    const/16 v0, -0x100

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    .line 89
    const v0, 0x48ffff00

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    .line 90
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    .line 91
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidateExtraBorder:I

    .line 93
    iput v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    .line 94
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 95
    const v0, 0x3e8ccccd

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 96
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 98
    iput v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 102
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureVisible:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 134
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    .line 135
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    .line 136
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 139
    new-instance v0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;-><init>(Lcom/android/internal/widget/SkyGestureOverlayView;Lcom/android/internal/widget/SkyGestureOverlayView$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    .line 143
    invoke-direct {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->init()V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    const v0, 0x10103c0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 81
    const-wide/16 v1, 0x96

    iput-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J

    .line 82
    const-wide/16 v1, 0x1a4

    iput-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    .line 88
    const/16 v1, -0x100

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    .line 89
    const v1, 0x48ffff00

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    .line 90
    const/high16 v1, 0x4140

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    .line 91
    iput v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidateExtraBorder:I

    .line 93
    iput v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    .line 94
    const/high16 v1, 0x4248

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 95
    const v1, 0x3e8ccccd

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 96
    const/high16 v1, 0x4220

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 98
    iput v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    .line 100
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 101
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    .line 102
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureVisible:Z

    .line 111
    iput-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    .line 112
    iput-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    .line 135
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    .line 136
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 139
    new-instance v1, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;-><init>(Lcom/android/internal/widget/SkyGestureOverlayView;Lcom/android/internal/widget/SkyGestureOverlayView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    .line 153
    sget-object v1, Lcom/android/internal/R$styleable;->GestureOverlayView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, a:Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    .line 158
    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidateExtraBorder:I

    .line 159
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    .line 161
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    .line 163
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J

    .line 164
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    .line 165
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    .line 167
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 170
    const/16 v1, 0x9

    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 173
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 176
    iget-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    .line 178
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    .line 180
    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    .line 182
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->init()V

    .line 185
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyGestureOverlayView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/SkyGestureOverlayView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/SkyGestureOverlayView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/SkyGestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mResetGesture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyGestureOverlayView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingStart:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SkyGestureOverlayView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SkyGestureOverlayView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->fireOnGesturePerformed()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/widget/SkyGestureOverlayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SkyGestureOverlayView;)Landroid/graphics/Path;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)Landroid/gesture/Gesture;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/SkyGestureOverlayView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 770
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 771
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 772
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 773
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;

    invoke-interface {v3, p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;->onGestureCancelled(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/view/MotionEvent;)V

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 776
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SkyGestureOverlayView;->clear(Z)V

    .line 777
    return-void
.end method

.method private clear(ZZZ)V
    .registers 9
    .parameter "animated"
    .parameter "fireActionPerformed"
    .parameter "immediate"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 446
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mResetGesture:Z

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    iput-boolean p2, v0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->fireActionPerformed:Z

    .line 448
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    iput-boolean v1, v0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 450
    if-eqz p1, :cond_36

    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_36

    .line 451
    iput v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    .line 452
    iput-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    .line 453
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    .line 454
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingStart:J

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    iget-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    :goto_35
    return-void

    .line 458
    :cond_36
    iput v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    .line 459
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    .line 460
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    .line 462
    if-eqz p3, :cond_49

    .line 463
    iput-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    goto :goto_35

    .line 466
    :cond_49
    if-eqz p2, :cond_53

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    iget-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35

    .line 468
    :cond_53
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    if-ne v0, v2, :cond_63

    .line 469
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    iput-boolean v2, v0, Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;->resetMultipleStrokes:Z

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    iget-wide v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_35

    .line 472
    :cond_63
    iput-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 473
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    goto :goto_35
.end method

.method private fireOnGesturePerformed()V
    .registers 6

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    .line 781
    .local v0, actionListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 782
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_17

    .line 783
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;

    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-interface {v3, p0, v4}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;->onGesturePerformed(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)V

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 785
    :cond_17
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->setWillNotDraw(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    .line 191
    .local v0, gesturePaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 195
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 196
    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 199
    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    iput v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentColor:I

    .line 200
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    .line 201
    return-void
.end method

.method private processEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_36

    :cond_9
    move v1, v2

    .line 575
    :cond_a
    :goto_a
    return v1

    .line 548
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView;->touchDown(Landroid/view/MotionEvent;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    goto :goto_a

    .line 552
    :pswitch_12
    iget-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v3, :cond_9

    .line 553
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView;->touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;

    move-result-object v0

    .line 554
    .local v0, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_a

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 561
    .end local v0           #rect:Landroid/graphics/Rect;
    :pswitch_20
    iget-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v3, :cond_9

    .line 562
    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    goto :goto_a

    .line 568
    :pswitch_2b
    iget-boolean v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsListeningForGestures:Z

    if-eqz v3, :cond_9

    .line 569
    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->touchUp(Landroid/view/MotionEvent;Z)V

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    goto :goto_a

    .line 546
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_b
        :pswitch_20
        :pswitch_12
        :pswitch_2b
    .end packed-switch
.end method

.method private setCurrentColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 407
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentColor:I

    .line 408
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    if-eqz v0, :cond_13

    .line 409
    const/high16 v0, 0x437f

    iget v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    .line 413
    :goto_f
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    .line 414
    return-void

    .line 411
    :cond_13
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    goto :goto_f
.end method

.method private setPaintAlpha(I)V
    .registers 7
    .parameter "alpha"

    .prologue
    .line 433
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    .line 434
    iget v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentColor:I

    ushr-int/lit8 v0, v2, 0x18

    .line 435
    .local v0, baseAlpha:I
    mul-int v2, v0, p1

    shr-int/lit8 v1, v2, 0x8

    .line 436
    .local v1, useAlpha:I
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    return-void
.end method

.method private touchDown(Landroid/view/MotionEvent;)V
    .registers 19
    .parameter "event"

    .prologue
    .line 579
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsListeningForGestures:Z

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 582
    .local v10, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 584
    .local v11, y:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v6, v12

    .line 585
    .local v6, left:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getRight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    const/high16 v14, 0x4000

    mul-float/2addr v13, v14

    sub-float v8, v12, v13

    .line 586
    .local v8, right:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingTop()I

    move-result v12

    int-to-float v9, v12

    .line 587
    .local v9, top:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    const/high16 v14, 0x4000

    mul-float/2addr v13, v14

    sub-float v3, v12, v13

    .line 589
    .local v3, bottom:F
    cmpg-float v12, v10, v6

    if-gez v12, :cond_47

    move v10, v6

    .line 590
    :cond_47
    cmpl-float v12, v10, v8

    if-lez v12, :cond_4c

    move v10, v8

    .line 591
    :cond_4c
    cmpg-float v12, v11, v9

    if-gez v12, :cond_51

    move v11, v9

    .line 592
    :cond_51
    cmpl-float v12, v11, v3

    if-lez v12, :cond_56

    move v11, v3

    .line 594
    :cond_56
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mX:F

    .line 595
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mY:F

    .line 597
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mTotalLength:F

    .line 598
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    .line 600
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    if-eqz v12, :cond_74

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mResetGesture:Z

    if-eqz v12, :cond_119

    .line 601
    :cond_74
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    if-eqz v12, :cond_83

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/SkyGestureOverlayView;->setCurrentColor(I)V

    .line 602
    :cond_83
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mResetGesture:Z

    .line 603
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 604
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 610
    :cond_94
    :goto_94
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    if-eqz v12, :cond_13a

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->cancelClearAnimation()V

    .line 619
    :cond_9d
    :goto_9d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v12, :cond_ac

    .line 620
    new-instance v12, Landroid/gesture/Gesture;

    invoke-direct {v12}, Landroid/gesture/Gesture;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 623
    :cond_ac
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v13, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-direct {v13, v10, v11, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    sget-object v14, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v10, v11, v13, v14}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sget-object v14, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v10, v11, v13, v14}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidateExtraBorder:I

    .line 630
    .local v2, border:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v13, v10

    sub-int/2addr v13, v2

    float-to-int v14, v11

    sub-int/2addr v14, v2

    float-to-int v15, v10

    add-int/2addr v15, v2

    float-to-int v0, v11

    move/from16 v16, v0

    add-int v16, v16, v2

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 632
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndX:F

    .line 633
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndY:F

    .line 636
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 637
    .local v7, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 638
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_107
    if-ge v5, v4, :cond_15c

    .line 639
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v12, v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;->onGestureStarted(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/view/MotionEvent;)V

    .line 638
    add-int/lit8 v5, v5, 0x1

    goto :goto_107

    .line 605
    .end local v2           #border:I
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v7           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    :cond_119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v12, :cond_129

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v12}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v12

    if-nez v12, :cond_94

    .line 606
    :cond_129
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    if-eqz v12, :cond_94

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/SkyGestureOverlayView;->setCurrentColor(I)V

    goto/16 :goto_94

    .line 612
    :cond_13a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    if-eqz v12, :cond_9d

    .line 613
    const/16 v12, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    .line 614
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    .line 615
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/SkyGestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_9d

    .line 641
    .restart local v2       #border:I
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v7       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    :cond_15c
    return-void
.end method

.method private touchMove(Landroid/view/MotionEvent;)Landroid/graphics/Rect;
    .registers 31
    .parameter "event"

    .prologue
    .line 644
    const/4 v6, 0x0

    .line 646
    .local v6, areaToRefresh:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    .line 647
    .local v23, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    .line 649
    .local v24, y:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getLeft()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingLeft()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v16, v0

    .line 650
    .local v16, left:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getRight()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingRight()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    mul-float v26, v26, v27

    sub-float v21, v25, v26

    .line 651
    .local v21, right:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v22, v0

    .line 652
    .local v22, top:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getHeight()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    mul-float v26, v26, v27

    sub-float v8, v25, v26

    .line 654
    .local v8, bottom:F
    cmpg-float v25, v23, v16

    if-gez v25, :cond_5d

    move/from16 v23, v16

    .line 655
    :cond_5d
    cmpl-float v25, v23, v21

    if-lez v25, :cond_63

    move/from16 v23, v21

    .line 656
    :cond_63
    cmpg-float v25, v24, v22

    if-gez v25, :cond_69

    move/from16 v24, v22

    .line 657
    :cond_69
    cmpl-float v25, v24, v8

    if-lez v25, :cond_6f

    move/from16 v24, v8

    .line 659
    :cond_6f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mX:F

    move/from16 v19, v0

    .line 660
    .local v19, previousX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mY:F

    move/from16 v20, v0

    .line 662
    .local v20, previousY:F
    sub-float v25, v23, v19

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 663
    .local v13, dx:F
    sub-float v25, v24, v20

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 665
    .local v14, dy:F
    const/high16 v25, 0x4040

    cmpl-float v25, v13, v25

    if-gez v25, :cond_93

    const/high16 v25, 0x4040

    cmpl-float v25, v14, v25

    if-ltz v25, :cond_24c

    .line 666
    :cond_93
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidRect:Landroid/graphics/Rect;

    .line 669
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidateExtraBorder:I

    .line 670
    .local v7, border:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v25, v25, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndY:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndX:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v27, v27, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndY:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 673
    add-float v25, v23, v19

    const/high16 v26, 0x4000

    div-float v10, v25, v26

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndX:F

    .line 674
    .local v10, cX:F
    add-float v25, v24, v20

    const/high16 v26, 0x4000

    div-float v11, v25, v26

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurveEndY:F

    .line 676
    .local v11, cY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 679
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v25, v25, v7

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v7

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    add-int v27, v27, v7

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 683
    float-to-int v0, v10

    move/from16 v25, v0

    sub-int v25, v25, v7

    float-to-int v0, v11

    move/from16 v26, v0

    sub-int v26, v26, v7

    float-to-int v0, v10

    move/from16 v27, v0

    add-int v27, v27, v7

    float-to-int v0, v11

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 686
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyGestureOverlayView;->mX:F

    .line 687
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyGestureOverlayView;->mY:F

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    new-instance v26, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v27

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    move/from16 v25, v0

    if-eqz v25, :cond_22b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    move/from16 v25, v0

    if-nez v25, :cond_22b

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mTotalLength:F

    move/from16 v25, v0

    mul-float v26, v13, v13

    mul-float v27, v14, v14

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyGestureOverlayView;->mTotalLength:F

    .line 694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mTotalLength:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_22b

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;

    move-result-object v9

    .line 698
    .local v9, box:Landroid/gesture/OrientedBoundingBox;
    iget v0, v9, Landroid/gesture/OrientedBoundingBox;->orientation:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 699
    .local v5, angle:F
    const/high16 v25, 0x42b4

    cmpl-float v25, v5, v25

    if-lez v25, :cond_1c7

    .line 700
    const/high16 v25, 0x4334

    sub-float v5, v25, v5

    .line 703
    :cond_1c7
    iget v0, v9, Landroid/gesture/OrientedBoundingBox;->squareness:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_1ed

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_221

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    move/from16 v25, v0

    cmpg-float v25, v5, v25

    if-gez v25, :cond_22b

    .line 708
    :cond_1ed
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->setCurrentColor(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 712
    .local v18, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 713
    .local v12, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_20d
    if-ge v15, v12, :cond_22b

    .line 714
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;->onGesturingStarted(Lcom/android/internal/widget/SkyGestureOverlayView;)V

    .line 713
    add-int/lit8 v15, v15, 0x1

    goto :goto_20d

    .line 703
    .end local v12           #count:I
    .end local v15           #i:I
    .end local v18           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;>;"
    :cond_221
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    move/from16 v25, v0

    cmpl-float v25, v5, v25

    if-gtz v25, :cond_1ed

    .line 721
    .end local v5           #angle:F
    .end local v9           #box:Landroid/gesture/OrientedBoundingBox;
    :cond_22b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 722
    .local v17, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 723
    .restart local v12       #count:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_236
    if-ge v15, v12, :cond_24c

    .line 724
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;->onGesture(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/view/MotionEvent;)V

    .line 723
    add-int/lit8 v15, v15, 0x1

    goto :goto_236

    .line 728
    .end local v7           #border:I
    .end local v10           #cX:F
    .end local v11           #cY:F
    .end local v12           #count:I
    .end local v15           #i:I
    .end local v17           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    :cond_24c
    return-object v6
.end method

.method private touchUp(Landroid/view/MotionEvent;Z)V
    .registers 12
    .parameter "event"
    .parameter "cancel"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 732
    iput-boolean v6, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsListeningForGestures:Z

    .line 735
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v4, :cond_67

    .line 737
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 739
    if-nez p2, :cond_63

    .line 741
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 742
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 743
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v0, :cond_2b

    .line 744
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;

    invoke-interface {v4, p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;->onGestureEnded(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/view/MotionEvent;)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 747
    :cond_2b
    iget-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    if-eqz v4, :cond_5f

    iget-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    if-eqz v4, :cond_5f

    move v4, v5

    :goto_34
    iget-boolean v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    if-eqz v7, :cond_61

    iget-boolean v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    if-eqz v7, :cond_61

    :goto_3c
    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/widget/SkyGestureOverlayView;->clear(ZZZ)V

    .line 757
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    :goto_3f
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 758
    iget-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    iput-boolean v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z

    .line 759
    iput-boolean v6, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    .line 761
    iget-object v3, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 762
    .local v3, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 763
    .restart local v0       #count:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_51
    if-ge v1, v0, :cond_6b

    .line 764
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;

    invoke-interface {v4, p0}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;->onGesturingEnded(Lcom/android/internal/widget/SkyGestureOverlayView;)V

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .end local v3           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;>;"
    .restart local v2       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    :cond_5f
    move v4, v6

    .line 747
    goto :goto_34

    :cond_61
    move v5, v6

    goto :goto_3c

    .line 750
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    :cond_63
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3f

    .line 754
    :cond_67
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView;->cancelGesture(Landroid/view/MotionEvent;)V

    goto :goto_3f

    .line 766
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;>;"
    :cond_6b
    return-void
.end method


# virtual methods
.method public addOnGestureListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public addOnGesturePerformedListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    .line 376
    :cond_10
    return-void
.end method

.method public addOnGesturingListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method public cancelClearAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 480
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->setPaintAlpha(I)V

    .line 481
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsFadingOut:Z

    .line 482
    iput-boolean v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingHasStarted:Z

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadingOut:Lcom/android/internal/widget/SkyGestureOverlayView$FadeOutRunnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 486
    return-void
.end method

.method public cancelGesture()V
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 489
    iput-boolean v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsListeningForGestures:Z

    .line 492
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v3, Landroid/gesture/GestureStroke;

    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 496
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 499
    .local v9, event:Landroid/view/MotionEvent;
    iget-object v11, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    .line 500
    .local v11, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 501
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_22
    if-ge v10, v8, :cond_30

    .line 502
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;

    invoke-interface {v2, p0, v9}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;->onGestureCancelled(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/view/MotionEvent;)V

    .line 501
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 505
    :cond_30
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 507
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SkyGestureOverlayView;->clear(Z)V

    .line 508
    iput-boolean v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    .line 509
    iput-boolean v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z

    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 512
    iget-object v12, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    .line 513
    .local v12, otherListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 514
    const/4 v10, 0x0

    :goto_46
    if-ge v10, v8, :cond_54

    .line 515
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;

    invoke-interface {v2, p0}, Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;->onGesturingEnded(Lcom/android/internal/widget/SkyGestureOverlayView;)V

    .line 514
    add-int/lit8 v10, v10, 0x1

    goto :goto_46

    .line 517
    :cond_54
    return-void
.end method

.method public clear(Z)V
    .registers 4
    .parameter "animated"

    .prologue
    .line 440
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->clear(ZZZ)V

    .line 441
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 527
    iget-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v2}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v2

    if-lez v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPreviousWasGesturing:Z

    if-eqz v2, :cond_2d

    :cond_1b
    iget-boolean v2, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    if-eqz v2, :cond_2d

    move v0, v1

    .line 531
    .local v0, cancelDispatch:Z
    :goto_20
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureOverlayView;->processEvent(Landroid/view/MotionEvent;)Z

    .line 533
    if-eqz v0, :cond_29

    .line 534
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 537
    :cond_29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 542
    .end local v0           #cancelDispatch:Z
    :goto_2c
    return v1

    .line 527
    :cond_2d
    const/4 v0, 0x0

    goto :goto_20

    .line 542
    :cond_2f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2c
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureVisible:Z

    if-eqz v0, :cond_12

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 430
    :cond_12
    return-void
.end method

.method public getCurrentStroke()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mStrokeBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFadeOffset()J
    .registers 3

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    return-wide v0
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public getGestureColor()I
    .registers 2

    .prologue
    .line 228
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    return v0
.end method

.method public getGesturePaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGesturePath()Landroid/graphics/Path;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getGesturePath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .registers 3
    .parameter "path"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 340
    return-object p1
.end method

.method public getGestureStrokeAngleThreshold()F
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    return v0
.end method

.method public getGestureStrokeLengthThreshold()F
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    return v0
.end method

.method public getGestureStrokeSquarenessTreshold()F
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    return v0
.end method

.method public getGestureStrokeType()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    return v0
.end method

.method public getGestureStrokeWidth()F
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    return v0
.end method

.method public getUncertainGestureColor()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    return v0
.end method

.method public isEventsInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    return v0
.end method

.method public isFadeEnabled()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    return v0
.end method

.method public isGestureVisible()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureVisible:Z

    return v0
.end method

.method public isGesturing()Z
    .registers 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mIsGesturing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->cancelClearAnimation()V

    .line 522
    return-void
.end method

.method public removeAllOnGestureListeners()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    return-void
.end method

.method public removeAllOnGesturePerformedListeners()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    .line 388
    return-void
.end method

.method public removeAllOnGesturingListeners()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    return-void
.end method

.method public removeOnGestureListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGestureListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public removeOnGesturePerformedListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturePerformedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mHandleGestureActions:Z

    .line 383
    :cond_10
    return-void
.end method

.method public removeOnGesturingListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOnGesturingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public setEventsInterceptionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInterceptEvents:Z

    .line 279
    return-void
.end method

.method public setFadeEnabled(Z)V
    .registers 2
    .parameter "fadeEnabled"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeEnabled:Z

    .line 287
    return-void
.end method

.method public setFadeOffset(J)V
    .registers 3
    .parameter "fadeOffset"

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mFadeOffset:J

    .line 357
    return-void
.end method

.method public setGesture(Landroid/gesture/Gesture;)V
    .registers 14
    .parameter "gesture"

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x4000

    const/4 v10, 0x1

    .line 294
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v5, :cond_b

    .line 295
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/SkyGestureOverlayView;->clear(Z)V

    .line 298
    :cond_b
    iget v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    invoke-direct {p0, v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->setCurrentColor(I)V

    .line 299
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 301
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v5}, Landroid/gesture/Gesture;->toPath()Landroid/graphics/Path;

    move-result-object v3

    .line 302
    .local v3, path:Landroid/graphics/Path;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 303
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v3, v0, v10}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 305
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v5}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/gesture/GestureStroke;>;"
    const/4 v1, 0x0

    .local v1, index:I
    :goto_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_66

    .line 307
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureStroke;

    .line 309
    .local v4, stroke:Landroid/gesture/GestureStroke;
    iget-object v5, v4, Landroid/gesture/GestureStroke;->points:[F

    aget v5, v5, v9

    iget-object v6, v4, Landroid/gesture/GestureStroke;->points:[F

    aget v6, v6, v10

    iget v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 310
    iget-object v5, v4, Landroid/gesture/GestureStroke;->points:[F

    aget v5, v5, v9

    iget-object v6, v4, Landroid/gesture/GestureStroke;->points:[F

    aget v6, v6, v10

    iget v7, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    div-float/2addr v7, v11

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 312
    iget-object v5, v4, Landroid/gesture/GestureStroke;->points:[F

    array-length v5, v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_60

    iget-object v5, v4, Landroid/gesture/GestureStroke;->points:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x4

    .line 306
    :goto_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 312
    :cond_60
    iget-object v5, v4, Landroid/gesture/GestureStroke;->points:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    goto :goto_5d

    .line 325
    .end local v4           #stroke:Landroid/gesture/GestureStroke;
    :cond_66
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 326
    iget-object v5, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mPath:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    add-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    add-float/2addr v7, v8

    invoke-virtual {v5, v3, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 329
    iput-boolean v10, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mResetGesture:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->invalidate()V

    .line 332
    return-void
.end method

.method public setGestureColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 216
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mCertainGestureColor:I

    .line 217
    return-void
.end method

.method public setGestureStrokeAngleThreshold(F)V
    .registers 2
    .parameter "gestureStrokeAngleThreshold"

    .prologue
    .line 270
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeAngleThreshold:F

    .line 271
    return-void
.end method

.method public setGestureStrokeLengthThreshold(F)V
    .registers 2
    .parameter "gestureStrokeLengthThreshold"

    .prologue
    .line 254
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeLengthThreshold:F

    .line 255
    return-void
.end method

.method public setGestureStrokeSquarenessTreshold(F)V
    .registers 2
    .parameter "gestureStrokeSquarenessTreshold"

    .prologue
    .line 262
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeSquarenessTreshold:F

    .line 263
    return-void
.end method

.method public setGestureStrokeType(I)V
    .registers 2
    .parameter "gestureStrokeType"

    .prologue
    .line 246
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeType:I

    .line 247
    return-void
.end method

.method public setGestureStrokeWidth(F)V
    .registers 4
    .parameter "gestureStrokeWidth"

    .prologue
    .line 236
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureStrokeWidth:F

    .line 237
    const/4 v0, 0x1

    float-to-int v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mInvalidateExtraBorder:I

    .line 238
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGesturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    return-void
.end method

.method public setGestureVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mGestureVisible:Z

    .line 349
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 212
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mOrientation:I

    .line 213
    return-void
.end method

.method public setUncertainGestureColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 220
    iput p1, p0, Lcom/android/internal/widget/SkyGestureOverlayView;->mUncertainGestureColor:I

    .line 221
    return-void
.end method
