.class public Lcom/android/internal/widget/SkyGestureSubInfoView;
.super Landroid/widget/FrameLayout;
.source "SkyGestureSubInfoView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyGestureSunInfoView"


# instance fields
.field private mAlarmView:Landroid/widget/TextView;

.field private mAnswerView:Landroid/widget/TextView;

.field private mChargingView:Landroid/widget/TextView;

.field private mDivider1View:Landroid/view/View;

.field private mDivider2View:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->createSubView(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->createSubView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyGestureSubInfoView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyGestureSubInfoView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->showSubInfoView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyGestureSubInfoView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SkyGestureSubInfoView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mChargingView:Landroid/widget/TextView;

    return-object v0
.end method

.method private createSubView(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 44
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900d7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v1, 0x10202ca

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/widget/SkyGestureSubInfoView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyGestureSubInfoView$1;-><init>(Lcom/android/internal/widget/SkyGestureSubInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    const v1, 0x10202e1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/widget/SkyGestureSubInfoView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyGestureSubInfoView$2;-><init>(Lcom/android/internal/widget/SkyGestureSubInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    const v1, 0x10203d9

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mChargingView:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mChargingView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/widget/SkyGestureSubInfoView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyGestureSubInfoView$3;-><init>(Lcom/android/internal/widget/SkyGestureSubInfoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    const v1, 0x10203d7

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider1View:Landroid/view/View;

    .line 114
    const v1, 0x10203d8

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSubInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider2View:Landroid/view/View;

    .line 117
    invoke-direct {p0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->showSubInfoView()V

    .line 118
    return-void
.end method

.method private showSubInfoView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 122
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_57

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider1View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :goto_18
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_63

    .line 133
    :cond_28
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mChargingView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5d

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider2View:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_35
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mChargingView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_69

    .line 144
    :cond_4d
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyGestureSubInfoView;->setVisibility(I)V

    .line 148
    :goto_50
    return-void

    .line 126
    :cond_51
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider1View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 129
    :cond_57
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider1View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 136
    :cond_5d
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider2View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 139
    :cond_63
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider2View:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    .line 146
    :cond_69
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->setVisibility(I)V

    goto :goto_50
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v0, "SkyGestureSunInfoView"

    const-string v1, "SkyGestureSubInfoView clean..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/SkyGestureSubInfoView;->recursiveRecycleView(Landroid/view/View;)V

    .line 156
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAlarmView:Landroid/widget/TextView;

    .line 157
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mAnswerView:Landroid/widget/TextView;

    .line 158
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mChargingView:Landroid/widget/TextView;

    .line 160
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider1View:Landroid/view/View;

    .line 161
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSubInfoView;->mDivider2View:Landroid/view/View;

    .line 162
    return-void
.end method

.method public recursiveRecycleView(Landroid/view/View;)V
    .registers 8
    .parameter "root"

    .prologue
    const/4 v5, 0x0

    .line 165
    if-nez p1, :cond_4

    .line 195
    :goto_3
    return-void

    .line 168
    :cond_4
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_23

    move-object v2, p1

    .line 169
    check-cast v2, Landroid/view/ViewGroup;

    .line 170
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 171
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1c

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyGestureSubInfoView;->recursiveRecycleView(Landroid/view/View;)V

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 175
    :cond_1c
    instance-of v4, p1, Landroid/widget/AdapterView;

    if-nez v4, :cond_23

    .line 176
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 180
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_23
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_39

    move-object v4, p1

    .line 181
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_33

    .line 183
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_33
    move-object v4, p1

    .line 185
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 190
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_49
    const/4 p1, 0x0

    .line 195
    goto :goto_3
.end method
