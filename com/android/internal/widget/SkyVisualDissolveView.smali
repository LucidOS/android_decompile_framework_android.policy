.class public Lcom/android/internal/widget/SkyVisualDissolveView;
.super Landroid/widget/ImageView;
.source "SkyVisualDissolveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;
    }
.end annotation


# instance fields
.field private mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

.field private mImageShow:Landroid/graphics/drawable/BitmapDrawable;

.field private mShowRect:Landroid/graphics/Rect;

.field private mUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mUser:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyVisualDissolveView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mUser:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyVisualDissolveView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;-><init>(Lcom/android/internal/widget/SkyVisualDissolveView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mShowRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method private scaleImageToCenterCrop(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V
    .registers 14
    .parameter "image"
    .parameter "rect"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 42
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 43
    .local v1, dwidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 46
    .local v0, dheight:I
    const/4 v2, 0x0

    .local v2, dx:F
    const/4 v3, 0x0

    .line 48
    .local v3, dy:F
    mul-int v5, v1, p4

    mul-int v6, p3, v0

    if-le v5, v6, :cond_2c

    .line 49
    int-to-float v5, p4

    int-to-float v6, v0

    div-float v4, v5, v6

    .line 50
    .local v4, scale:F
    int-to-float v5, p3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float v2, v5, v7

    .line 56
    :goto_1d
    int-to-float v5, v1

    mul-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v0

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {p2, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 62
    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {p2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 63
    return-void

    .line 52
    .end local v4           #scale:F
    :cond_2c
    int-to-float v5, p3

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 53
    .restart local v4       #scale:F
    int-to-float v5, p4

    int-to-float v6, v0

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    mul-float v3, v5, v7

    goto :goto_1d
.end method


# virtual methods
.method public cleanImage()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    invoke-virtual {v1}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->stopDisolve()V

    .line 120
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    .line 122
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_23

    .line 123
    iget-boolean v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mUser:Z

    if-eqz v1, :cond_21

    .line 124
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, tmpD:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_21

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    .end local v0           #tmpD:Landroid/graphics/Bitmap;
    :cond_21
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    :cond_23
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mShowRect:Landroid/graphics/Rect;

    .line 133
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    :cond_12
    :goto_12
    return-void

    .line 74
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    invoke-virtual {v1}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->getShowAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mShowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_12
.end method

.method public startDraw(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDissolveView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1e

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mShowRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/SkyVisualDissolveView;->scaleImageToCenterCrop(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->startDisolve()V

    .line 92
    :cond_1e
    return-void
.end method

.method public startDraw(Landroid/graphics/Bitmap;II)V
    .registers 6
    .parameter "newBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mUser:Z

    .line 98
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDissolveView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_28

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mShowRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/widget/SkyVisualDissolveView;->scaleImageToCenterCrop(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->startDisolve()V

    .line 105
    :cond_28
    return-void
.end method

.method public startDraw(Landroid/graphics/drawable/BitmapDrawable;II)V
    .registers 6
    .parameter "newBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_18

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mImageShow:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mShowRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/internal/widget/SkyVisualDissolveView;->scaleImageToCenterCrop(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDissolveView;->mDissolveHandler:Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualDissolveView$DissolveHandler;->startDisolve()V

    .line 116
    :cond_18
    return-void
.end method
