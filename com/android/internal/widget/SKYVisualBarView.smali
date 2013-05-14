.class public Lcom/android/internal/widget/SKYVisualBarView;
.super Landroid/widget/LinearLayout;
.source "SKYVisualBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_ACTION_MOVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SKYVisualBarView"

.field private static final VIBRATE_LONG:J = 0x14L

.field private static final VIBRATE_SHORT:J = 0x14L

.field private static mCountImgNum:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mDragMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntentURI:Ljava/lang/String;

.field private mLightRes:I

.field private mLongTapPanel:Landroid/widget/RelativeLayout;

.field private mMissedCountDigit1View:Landroid/view/View;

.field private mMissedCountDigit2View:Landroid/view/View;

.field private mMissedCountDigit3View:Landroid/view/View;

.field private mMissedCountShowMode:I

.field private mNormalPanel:Landroid/widget/RelativeLayout;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTriggerListener:Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;

.field private mShortTouchListener:Landroid/view/View$OnTouchListener;

.field private mTapButton:Landroid/widget/ImageView;

.field private mTextColor:I

.field private mTextPannel:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTouchView:Landroid/view/View;

.field private mTouchedEffectView:Landroid/view/View;

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    return-void

    :array_a
    .array-data 0x4
        0x8at 0x8t 0x8t 0x1t
        0x8bt 0x8t 0x8t 0x1t
        0x8ct 0x8t 0x8t 0x1t
        0x8dt 0x8t 0x8t 0x1t
        0x8et 0x8t 0x8t 0x1t
        0x8ft 0x8t 0x8t 0x1t
        0x90t 0x8t 0x8t 0x1t
        0x91t 0x8t 0x8t 0x1t
        0x92t 0x8t 0x8t 0x1t
        0x93t 0x8t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 253
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    .line 59
    const v0, 0x108086c

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLightRes:I

    .line 60
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextColor:I

    .line 68
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F

    .line 69
    iput-boolean v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/SKYVisualBarView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SKYVisualBarView$1;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/android/internal/widget/SKYVisualBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYVisualBarView$2;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mShortTouchListener:Landroid/view/View$OnTouchListener;

    .line 254
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mContext:Landroid/content/Context;

    .line 255
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F

    .line 256
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->init()V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 260
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    .line 59
    const v0, 0x108086c

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLightRes:I

    .line 60
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextColor:I

    .line 68
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F

    .line 69
    iput-boolean v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/SKYVisualBarView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SKYVisualBarView$1;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/android/internal/widget/SKYVisualBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYVisualBarView$2;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mShortTouchListener:Landroid/view/View$OnTouchListener;

    .line 261
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mContext:Landroid/content/Context;

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F

    .line 263
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->init()V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SKYVisualBarView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SKYVisualBarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SKYVisualBarView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/SKYVisualBarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->animationShort()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/SKYVisualBarView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SKYVisualBarView;->checkMissedCountShowInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/SKYVisualBarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->dispatchTriggerEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SKYVisualBarView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SKYVisualBarView;->dipToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SKYVisualBarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SKYVisualBarView;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SKYVisualBarView;->vibrate(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SKYVisualBarView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/SKYVisualBarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/SKYVisualBarView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private animationShort()V
    .registers 16

    .prologue
    const-wide/16 v13, 0xc8

    const/4 v3, 0x4

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 278
    iget-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextPannel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    const v3, 0x108082d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 286
    .local v11, set:Landroid/view/animation/AnimationSet;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 288
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 289
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 290
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 292
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 297
    .restart local v0       #animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v13, v14}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 298
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 300
    new-instance v1, Lcom/android/internal/widget/SKYVisualBarView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SKYVisualBarView$3;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 320
    const v10, 0x3e99999a

    .line 321
    .local v10, delay:F
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v9, v11, v10}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 323
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLongTapPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLongTapPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 326
    return-void
.end method

.method private checkMissedCountShowInTouchMode(Z)V
    .registers 5
    .parameter "isTouchMode"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 503
    if-eqz p1, :cond_14

    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :goto_13
    return-void

    .line 511
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    packed-switch v0, :pswitch_data_4a

    .line 526
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 514
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 517
    :pswitch_2f
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 521
    :pswitch_3a
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 511
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2f
        :pswitch_3a
    .end packed-switch
.end method

.method private cleanupImageView(Landroid/widget/ImageView;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 582
    if-eqz p1, :cond_f

    .line 583
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 584
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 585
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 587
    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_f
    return-void
.end method

.method private dipToPx(I)I
    .registers 4
    .parameter "nDip"

    .prologue
    .line 535
    int-to-float v0, p1

    iget v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private dispatchTriggerEvent()V
    .registers 3

    .prologue
    .line 425
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SKYVisualBarView;->vibrate(J)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mOnTriggerListener:Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;

    if-eqz v0, :cond_e

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mOnTriggerListener:Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;->onTrigger(Landroid/view/View;)V

    .line 429
    :cond_e
    return-void
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    .line 268
    iget-object v3, p0, Lcom/android/internal/widget/SKYVisualBarView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 269
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900db

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 270
    .local v2, v:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 271
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/SKYVisualBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->initViews()V

    .line 274
    return-void
.end method

.method private initViews()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 329
    const v0, 0x10203f6

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mNormalPanel:Landroid/widget/RelativeLayout;

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mNormalPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    const v0, 0x10203fd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    const v0, 0x10203fe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLongTapPanel:Landroid/widget/RelativeLayout;

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLongTapPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    const v0, 0x1020400

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    .line 342
    const v0, 0x10203fb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextPannel:Landroid/widget/LinearLayout;

    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextPannel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mShortTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextPannel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/widget/SKYVisualBarView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SKYVisualBarView$4;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 352
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    .line 353
    const v0, 0x10203fc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mShortTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/widget/SKYVisualBarView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SKYVisualBarView$5;-><init>(Lcom/android/internal/widget/SKYVisualBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 367
    const v0, 0x10203f8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    .line 368
    const v0, 0x10203f9

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    .line 369
    const v0, 0x10203fa

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    return-void
.end method

.method private returnNormal()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLightRes:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLongTapPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextPannel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iput-boolean v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mDragMode:Z

    .line 392
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SKYVisualBarView;->checkMissedCountShowInTouchMode(Z)V

    .line 393
    iput-boolean v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTriggered:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/widget/SKYVisualBarView;->invalidate()V

    .line 395
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/widget/SKYVisualBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mVibrator:Landroid/os/Vibrator;

    .line 437
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 438
    monitor-exit p0

    return-void

    .line 433
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mHandler:Landroid/os/Handler;

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SKYVisualBarView;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mNormalPanel:Landroid/widget/RelativeLayout;

    .line 557
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchedEffectView:Landroid/view/View;

    .line 558
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLongTapPanel:Landroid/widget/RelativeLayout;

    .line 560
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    .line 561
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTouchView:Landroid/view/View;

    .line 563
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTapButton:Landroid/widget/ImageView;

    .line 565
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mOnTriggerListener:Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;

    .line 567
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextPannel:Landroid/widget/LinearLayout;

    .line 569
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    .line 570
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    .line 571
    iput-object v2, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/widget/SKYVisualBarView;->removeAllViews()V

    .line 578
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V

    .line 443
    return-void
.end method

.method public setIntentURI(Ljava/lang/String;)V
    .registers 2
    .parameter "intentUri"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mIntentURI:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setMissedCount(I)V
    .registers 8
    .parameter "nCount"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 454
    if-nez p1, :cond_16

    .line 456
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iput v4, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    .line 500
    :goto_15
    return-void

    .line 462
    :cond_16
    const/16 v1, 0x9

    if-gt p1, v1, :cond_36

    .line 464
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    sget-object v2, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 466
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    goto :goto_15

    .line 472
    :cond_36
    const/16 v1, 0x63

    if-gt p1, v1, :cond_63

    .line 474
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    sget-object v2, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    div-int/lit8 v3, p1, 0xa

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 475
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    sget-object v2, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    rem-int/lit8 v3, p1, 0xa

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    goto :goto_15

    .line 483
    :cond_63
    const/16 v1, 0x3e7

    if-gt p1, v1, :cond_9e

    .line 485
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    sget-object v2, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    div-int/lit8 v3, p1, 0x64

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 486
    rem-int/lit8 v0, p1, 0x64

    .line 487
    .local v0, nCount10Digit:I
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    sget-object v2, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    div-int/lit8 v3, v0, 0xa

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 488
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    sget-object v2, Lcom/android/internal/widget/SKYVisualBarView;->mCountImgNum:[I

    rem-int/lit8 v3, v0, 0xa

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 490
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit1View:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit2View:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountDigit3View:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 494
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mMissedCountShowMode:I

    goto/16 :goto_15

    .line 498
    .end local v0           #nCount10Digit:I
    :cond_9e
    const-string v1, "SKYVisualBarView"

    const-string v2, "setMissedCount() cannot cover over 999"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 450
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mOnTriggerListener:Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;

    .line 421
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 9
    .parameter "title"

    .prologue
    const v6, 0x108086c

    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 398
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const v1, 0x10203ff

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYVisualBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    .local v0, longTapTitle:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SKYVisualBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104030b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 402
    iput v6, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLightRes:I

    .line 403
    const/16 v1, 0xc1

    invoke-static {v1, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextColor:I

    .line 410
    :goto_39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-direct {p0}, Lcom/android/internal/widget/SKYVisualBarView;->returnNormal()V

    .line 412
    return-void

    .line 407
    :cond_40
    iput v6, p0, Lcom/android/internal/widget/SKYVisualBarView;->mLightRes:I

    .line 408
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SKYVisualBarView;->mTextColor:I

    goto :goto_39
.end method
