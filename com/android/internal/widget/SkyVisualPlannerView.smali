.class public Lcom/android/internal/widget/SkyVisualPlannerView;
.super Landroid/widget/LinearLayout;
.source "SkyVisualPlannerView.java"


# static fields
.field private static final Debug:Z = false

.field private static final TAG:Ljava/lang/String; = "SkyVisualPlannerView"


# instance fields
.field private mDay:I

.field private mDay1Bitmap:Landroid/graphics/Bitmap;

.field private mDay2Bitmap:Landroid/graphics/Bitmap;

.field private mDayImageArray:[I

.field private mMonth:I

.field private mMonthBitmap:Landroid/graphics/Bitmap;

.field private mMonthImageArray:[I

.field private mPlannerImageIDArray:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthImageArray:[I

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDayImageArray:[I

    .line 64
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay1Bitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay2Bitmap:Landroid/graphics/Bitmap;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->createScreen()V

    .line 71
    return-void

    .line 25
    :array_28
    .array-data 0x4
        0x1bt 0x4t 0x2t 0x1t
        0x1ct 0x4t 0x2t 0x1t
        0x1dt 0x4t 0x2t 0x1t
        0x1et 0x4t 0x2t 0x1t
        0x1ft 0x4t 0x2t 0x1t
        0x20t 0x4t 0x2t 0x1t
    .end array-data

    .line 34
    :array_38
    .array-data 0x4
        0x7et 0x8t 0x8t 0x1t
        0x7ft 0x8t 0x8t 0x1t
        0x80t 0x8t 0x8t 0x1t
        0x81t 0x8t 0x8t 0x1t
        0x82t 0x8t 0x8t 0x1t
        0x83t 0x8t 0x8t 0x1t
        0x84t 0x8t 0x8t 0x1t
        0x85t 0x8t 0x8t 0x1t
        0x86t 0x8t 0x8t 0x1t
        0x87t 0x8t 0x8t 0x1t
        0x88t 0x8t 0x8t 0x1t
        0x89t 0x8t 0x8t 0x1t
    .end array-data

    .line 49
    :array_54
    .array-data 0x4
        0x74t 0x8t 0x8t 0x1t
        0x75t 0x8t 0x8t 0x1t
        0x76t 0x8t 0x8t 0x1t
        0x77t 0x8t 0x8t 0x1t
        0x78t 0x8t 0x8t 0x1t
        0x79t 0x8t 0x8t 0x1t
        0x7at 0x8t 0x8t 0x1t
        0x7bt 0x8t 0x8t 0x1t
        0x7ct 0x8t 0x8t 0x1t
        0x7dt 0x8t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthImageArray:[I

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDayImageArray:[I

    .line 64
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay1Bitmap:Landroid/graphics/Bitmap;

    .line 66
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay2Bitmap:Landroid/graphics/Bitmap;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->createScreen()V

    .line 76
    return-void

    .line 25
    :array_28
    .array-data 0x4
        0x1bt 0x4t 0x2t 0x1t
        0x1ct 0x4t 0x2t 0x1t
        0x1dt 0x4t 0x2t 0x1t
        0x1et 0x4t 0x2t 0x1t
        0x1ft 0x4t 0x2t 0x1t
        0x20t 0x4t 0x2t 0x1t
    .end array-data

    .line 34
    :array_38
    .array-data 0x4
        0x7et 0x8t 0x8t 0x1t
        0x7ft 0x8t 0x8t 0x1t
        0x80t 0x8t 0x8t 0x1t
        0x81t 0x8t 0x8t 0x1t
        0x82t 0x8t 0x8t 0x1t
        0x83t 0x8t 0x8t 0x1t
        0x84t 0x8t 0x8t 0x1t
        0x85t 0x8t 0x8t 0x1t
        0x86t 0x8t 0x8t 0x1t
        0x87t 0x8t 0x8t 0x1t
        0x88t 0x8t 0x8t 0x1t
        0x89t 0x8t 0x8t 0x1t
    .end array-data

    .line 49
    :array_54
    .array-data 0x4
        0x74t 0x8t 0x8t 0x1t
        0x75t 0x8t 0x8t 0x1t
        0x76t 0x8t 0x8t 0x1t
        0x77t 0x8t 0x8t 0x1t
        0x78t 0x8t 0x8t 0x1t
        0x79t 0x8t 0x8t 0x1t
        0x7at 0x8t 0x8t 0x1t
        0x7bt 0x8t 0x8t 0x1t
        0x7ct 0x8t 0x8t 0x1t
        0x7dt 0x8t 0x8t 0x1t
    .end array-data
.end method

.method private createScreen()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 110
    const-string v4, "SkyVisualPlannerView"

    const-string v5, "createScreen() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 113
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 114
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 115
    .local v1, config:Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_33

    .line 116
    const v4, 0x10900e0

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 120
    :goto_2a
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    .local v0, bottom_params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/SkyVisualPlannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void

    .line 118
    .end local v0           #bottom_params:Landroid/view/ViewGroup$LayoutParams;
    :cond_33
    const v4, 0x10900e1

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_2a
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 81
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 88
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthBitmap:Landroid/graphics/Bitmap;

    .line 93
    :cond_f
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay1Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay1Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay1Bitmap:Landroid/graphics/Bitmap;

    .line 98
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay2Bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay2Bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay2Bitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_25
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    .line 105
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthImageArray:[I

    .line 106
    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDayImageArray:[I

    .line 107
    return-void
.end method

.method public removePlan()V
    .registers 5

    .prologue
    .line 125
    const-string v2, "SkyVisualPlannerView"

    const-string v3, "removePlan() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_24

    .line 128
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyVisualPlannerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 129
    .local v1, v:Landroid/widget/ImageView;
    if-eqz v1, :cond_21

    .line 130
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 134
    .end local v1           #v:Landroid/widget/ImageView;
    :cond_24
    return-void
.end method

.method public setPlan(II)V
    .registers 15
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 137
    const-string v7, "SkyVisualPlannerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPlan("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") called"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput p1, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonth:I

    .line 140
    iput p2, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay:I

    .line 142
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 145
    .local v5, random:Ljava/util/Random;
    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    mul-int/lit8 v6, v7, 0x3

    .line 146
    .local v6, ss:I
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    aget v7, v7, v6

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SkyVisualPlannerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 149
    .local v4, monthView:Landroid/widget/ImageView;
    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 150
    .local v1, dayRan:I
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SkyVisualPlannerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 151
    .local v2, dayView1:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mPlannerImageIDArray:[I

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SkyVisualPlannerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 155
    .local v3, dayView2:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x10a0058

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 159
    .local v0, an:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonthImageArray:[I

    iget v9, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mMonth:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 161
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDayImageArray:[I

    iget v9, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay:I

    div-int/lit8 v9, v9, 0xa

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 167
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualPlannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDayImageArray:[I

    iget v9, p0, Lcom/android/internal/widget/SkyVisualPlannerView;->mDay:I

    rem-int/lit8 v9, v9, 0xa

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 173
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    return-void
.end method
