.class public Lcom/android/internal/widget/SkyGestureTimeView;
.super Landroid/widget/FrameLayout;
.source "SkyGestureTimeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyGestureTimeViewTest"


# instance fields
.field private DEBUG:Z

.field private isRoaming:Z

.field private mNormalView:Lcom/android/internal/widget/SkyDigitalClockForGesture;

.field private mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->DEBUG:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->isRoaming:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureTimeView;->createTimeView(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->DEBUG:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->isRoaming:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureTimeView;->createTimeView(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private createTimeView(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 37
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900d8

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    const v1, 0x10203da

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkyDigitalClockForGesture;

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mNormalView:Lcom/android/internal/widget/SkyDigitalClockForGesture;

    .line 41
    const v1, 0x10203dc

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkyRoamingDigitalClock;

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 44
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mNormalView:Lcom/android/internal/widget/SkyDigitalClockForGesture;

    const v2, 0x10405ac

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->changeDateFormat(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    const v2, 0x10405ad

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->changeDateFormat(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getRoaming()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->isRoaming:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 85
    const-string v0, "SkyGestureTimeViewTest"

    const-string v1, "SkyGestureTimeView clean..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/SkyGestureTimeView;->recursiveRecycleView(Landroid/view/View;)V

    .line 89
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mNormalView:Lcom/android/internal/widget/SkyDigitalClockForGesture;

    .line 90
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 91
    return-void
.end method

.method public recursiveRecycleView(Landroid/view/View;)V
    .registers 8
    .parameter "root"

    .prologue
    const/4 v5, 0x0

    .line 94
    if-nez p1, :cond_4

    .line 124
    :goto_3
    return-void

    .line 97
    :cond_4
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_23

    move-object v2, p1

    .line 98
    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 100
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1c

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyGestureTimeView;->recursiveRecycleView(Landroid/view/View;)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 104
    :cond_1c
    instance-of v4, p1, Landroid/widget/AdapterView;

    if-nez v4, :cond_23

    .line 105
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 109
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_23
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_39

    move-object v4, p1

    .line 110
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_33

    .line 112
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_33
    move-object v4, p1

    .line 114
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 119
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_49
    const/4 p1, 0x0

    .line 124
    goto :goto_3
.end method

.method public setRoaming(ZZ)V
    .registers 7
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    const v3, 0x1020342

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyGestureTimeView;->isRoaming:Z

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->isRoaming:Z

    if-eqz v0, :cond_27

    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mNormalView:Lcom/android/internal/widget/SkyDigitalClockForGesture;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setVisibility(I)V

    .line 56
    if-eqz p2, :cond_1f

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SkyGestureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_1e
    return-void

    .line 59
    :cond_1f
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/SkyGestureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e

    .line 62
    :cond_27
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mNormalView:Lcom/android/internal/widget/SkyDigitalClockForGesture;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureTimeView;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setVisibility(I)V

    goto :goto_1e
.end method

.method public showRightView(Z)V
    .registers 7
    .parameter "isVisible"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 72
    const v2, 0x1020305

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyGestureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, normal_date:Landroid/view/View;
    const v2, 0x10203dd

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyGestureTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, roaming_help_view:Landroid/view/View;
    if-eqz p1, :cond_19

    .line 76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_18
    return-void

    .line 79
    :cond_19
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method
