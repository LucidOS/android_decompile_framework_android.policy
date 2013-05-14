.class Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;
.super Ljava/lang/Object;
.source "SkyVisualSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SkyVisualSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x3

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field public static final ALIGN_TOP:I = 0x2

.field public static final ALIGN_UNKNOWN:I = 0x4

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private alignment:I

.field private alignment_value:I

.field private currentState:I

.field private mDensity:F

.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;IIIF)V
    .registers 14
    .parameter "parent"
    .parameter "tabId"
    .parameter "barId"
    .parameter "targetId"
    .parameter "nDensity"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->currentState:I

    .line 180
    iput v7, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    .line 195
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030315

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    const/high16 v1, 0x4120

    const/16 v2, 0xff

    const/16 v3, 0xcc

    const/16 v4, 0xab

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 212
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    iput p5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->mDensity:F

    .line 225
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 244
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-ne v5, v4, :cond_3e

    :cond_b
    move v2, v4

    .line 245
    .local v2, horiz:Z
    :goto_c
    if-eqz v2, :cond_4b

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-nez v5, :cond_40

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    sub-int v0, v5, v6

    .line 247
    .local v0, dx:I
    :goto_1c
    if-eqz v2, :cond_4d

    .line 250
    .local v1, dy:I
    :goto_1e
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-direct {v3, v7, v5, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 251
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 252
    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_3e
    move v2, v1

    .line 244
    goto :goto_c

    .line 245
    .restart local v2       #horiz:Z
    :cond_40
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_1c

    :cond_4b
    move v0, v1

    goto :goto_1c

    .line 247
    .restart local v0       #dx:I
    :cond_4d
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5d

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_1e

    :cond_5d
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_1e
.end method

.method public hideTarget()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    return-void
.end method

.method layout(IIIII)V
    .registers 33
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "alignment"

    .prologue
    .line 335
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 337
    .local v15, tabBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 338
    .local v7, handleWidth:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 339
    .local v6, handleHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 340
    .local v17, targetDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    .line 341
    .local v22, targetWidth:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 342
    .local v18, targetHeight:I
    sub-int v12, p3, p1

    .line 343
    .local v12, parentWidth:I
    sub-int v11, p4, p2

    .line 348
    .local v11, parentHeight:I
    sub-int v24, v12, v7

    div-int/lit8 v8, v24, 0x2

    .line 349
    .local v8, left:I
    add-int v13, v8, v7

    .line 352
    .local v13, right:I
    div-int/lit8 v10, v12, 0x4

    .line 354
    .local v10, nQwith:I
    const-string v24, "RYU"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "parentWidth : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->mDensity:F

    move/from16 v24, v0

    const/high16 v25, 0x4000

    cmpl-float v24, v24, v25

    if-nez v24, :cond_cb

    .line 358
    mul-int/lit8 v24, v10, 0x3

    div-int/lit8 v25, v22, 0x2

    sub-int v9, v24, v25

    .line 359
    .local v9, leftTarget:I
    div-int/lit8 v24, v22, 0x2

    sub-int v14, v10, v24

    .line 369
    .local v14, rightTarget:I
    :goto_66
    if-eqz p5, :cond_70

    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_138

    .line 371
    :cond_70
    sub-int v24, v11, v18

    div-int/lit8 v21, v24, 0x2

    .line 372
    .local v21, targetTop:I
    add-int v16, v21, v18

    .line 373
    .local v16, targetBottom:I
    sub-int v24, v11, v6

    div-int/lit8 v23, v24, 0x2

    .line 374
    .local v23, top:I
    add-int v24, v11, v6

    div-int/lit8 v5, v24, 0x2

    .line 375
    .local v5, bottom:I
    if-nez p5, :cond_f1

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v7, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    rsub-int/lit8 v25, v12, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x15

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v9, v22

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v25

    move/from16 v3, v16

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 380
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    .line 406
    .end local v16           #targetBottom:I
    .end local v21           #targetTop:I
    :goto_ca
    return-void

    .line 364
    .end local v5           #bottom:I
    .end local v9           #leftTarget:I
    .end local v14           #rightTarget:I
    .end local v23           #top:I
    :cond_cb
    const v24, 0x3f2aaaab

    int-to-float v0, v12

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v22

    div-int/lit8 v25, v7, 0x2

    add-int v9, v24, v25

    .line 365
    .restart local v9       #leftTarget:I
    const v24, 0x3eaaaaaa

    int-to-float v0, v12

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v7, 0x2

    sub-int v14, v24, v25

    .restart local v14       #rightTarget:I
    goto/16 :goto_66

    .line 382
    .restart local v5       #bottom:I
    .restart local v16       #targetBottom:I
    .restart local v21       #targetTop:I
    .restart local v23       #top:I
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v12, v7

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v12, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v12, v12

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v14, v22

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v25

    move/from16 v3, v16

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setGravity(I)V

    .line 386
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    goto :goto_ca

    .line 390
    .end local v5           #bottom:I
    .end local v16           #targetBottom:I
    .end local v21           #targetTop:I
    .end local v23           #top:I
    :cond_138
    sub-int v24, v12, v22

    div-int/lit8 v19, v24, 0x2

    .line 391
    .local v19, targetLeft:I
    add-int v24, v12, v22

    div-int/lit8 v20, v24, 0x2

    .line 392
    .local v20, targetRight:I
    const v24, 0x3f2aaaab

    int-to-float v0, v11

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v6, 0x2

    add-int v24, v24, v25

    sub-int v23, v24, v18

    .line 393
    .restart local v23       #top:I
    const v24, 0x3eaaaaaa

    int-to-float v0, v11

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v6, 0x2

    sub-int v5, v24, v25

    .line 394
    .restart local v5       #bottom:I
    const/16 v24, 0x2

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_1ab

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1, v13, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    rsub-int/lit8 v25, v11, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v8, v1, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v23, v18

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 398
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    goto/16 :goto_ca

    .line 400
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    sub-int v25, v11, v6

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v8, v1, v13, v11}, Landroid/widget/ImageView;->layout(IIII)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v24, v0

    add-int v25, v11, v11

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v8, v11, v13, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    add-int v25, v5, v18

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v25

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 403
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    goto/16 :goto_ca
.end method

.method public measure()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 420
    return-void
.end method

.method reset(Z)V
    .registers 11
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 300
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setState(I)V

    .line 301
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030315

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 303
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-eqz v5, :cond_2c

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-ne v5, v2, :cond_5b

    .line 306
    .local v2, horiz:Z
    :cond_2c
    :goto_2c
    if-eqz v2, :cond_68

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-nez v5, :cond_5d

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v6

    sub-int v0, v5, v6

    .line 308
    .local v0, dx:I
    :goto_3c
    if-eqz v2, :cond_6a

    move v1, v4

    .line 310
    .local v1, dy:I
    :goto_3f
    if-eqz p1, :cond_85

    .line 311
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-direct {v3, v8, v5, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 312
    .local v3, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 313
    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 314
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    .end local v3           #trans:Landroid/view/animation/TranslateAnimation;
    :goto_5a
    return-void

    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    :cond_5b
    move v2, v4

    .line 305
    goto :goto_2c

    .line 306
    .restart local v2       #horiz:Z
    :cond_5d
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    sub-int v0, v5, v6

    goto :goto_3c

    :cond_68
    move v0, v4

    goto :goto_3c

    .line 308
    .restart local v0       #dx:I
    :cond_6a
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7a

    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_3f

    :cond_7a
    iget v5, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment_value:I

    iget-object v6, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_3f

    .line 317
    .restart local v1       #dy:I
    :cond_85
    if-eqz v2, :cond_a1

    .line 318
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    .line 319
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 324
    :goto_91
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->clearAnimation()V

    .line 325
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 326
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_5a

    .line 321
    :cond_a1
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    .line 322
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_91
.end method

.method setBarBackgroundResource(I)V
    .registers 3
    .parameter "barId"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 237
    return-void
.end method

.method setHintText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    return-void
.end method

.method setIcon(I)V
    .registers 3
    .parameter "iconId"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    return-void
.end method

.method setState(I)V
    .registers 8
    .parameter "state"

    .prologue
    const v5, 0x1030315

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 275
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v2, :cond_57

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 276
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_59

    move v1, v2

    :goto_12
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 277
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5b

    .line 278
    new-array v0, v2, [I

    const v1, 0x10100a2

    aput v1, v0, v3

    .line 279
    .local v0, activeState:[I
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 280
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 282
    :cond_34
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 283
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 285
    :cond_49
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 289
    .end local v0           #activeState:[I
    :goto_54
    iput p1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->currentState:I

    .line 290
    return-void

    :cond_57
    move v1, v3

    .line 275
    goto :goto_a

    :cond_59
    move v1, v3

    .line 276
    goto :goto_12

    .line 287
    :cond_5b
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_54
.end method

.method setTabBackgroundResource(I)V
    .registers 3
    .parameter "tabId"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 233
    return-void
.end method

.method setTarget(I)V
    .registers 3
    .parameter "targetId"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    return-void
.end method

.method show(Z)V
    .registers 9
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 259
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    if-eqz p1, :cond_3d

    .line 263
    iget v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-eqz v4, :cond_17

    iget v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-ne v4, v2, :cond_3e

    .line 264
    .local v2, horiz:Z
    :cond_17
    :goto_17
    if-eqz v2, :cond_48

    iget v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    if-nez v4, :cond_40

    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 265
    .local v0, dx:I
    :goto_23
    if-eqz v2, :cond_4a

    .line 267
    .local v1, dy:I
    :goto_25
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 268
    .local v3, trans:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 269
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #horiz:Z
    .end local v3           #trans:Landroid/view/animation/Animation;
    :cond_3d
    return-void

    :cond_3e
    move v2, v1

    .line 263
    goto :goto_17

    .line 264
    .restart local v2       #horiz:Z
    :cond_40
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    neg-int v0, v4

    goto :goto_23

    :cond_48
    move v0, v1

    goto :goto_23

    .line 265
    .restart local v0       #dx:I
    :cond_4a
    iget v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_56

    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_25

    :cond_56
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    neg-int v1, v4

    goto :goto_25
.end method

.method showTarget()V
    .registers 4

    .prologue
    .line 293
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 294
    .local v0, alphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "anim1"
    .parameter "anim2"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    return-void
.end method

.method public updateDrawableStates()V
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->currentState:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualSlidingTab$Slider;->setState(I)V

    .line 410
    return-void
.end method
