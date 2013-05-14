.class public Lcom/android/internal/widget/SkyGestureSlideContentsView;
.super Landroid/widget/HorizontalScrollView;
.source "SkyGestureSlideContentsView.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureSlideContentsView"


# instance fields
.field private mCList:Landroid/widget/ListView;

.field private mCTextView:Landroid/widget/TextView;

.field private mGesture:Landroid/view/GestureDetector;

.field private mGestureLibrary:Lcom/pantech/providers/skysettings/SKYGestures;

.field private mGestureListAdapter:Lcom/android/internal/widget/CustomGestureListAdapter;

.field private mGesture_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pantech/providers/skysettings/SKYGestureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturesListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mScreenWidth:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;-><init>(Lcom/android/internal/widget/SkyGestureSlideContentsView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesturesListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->createSubView(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;-><init>(Lcom/android/internal/widget/SkyGestureSlideContentsView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesturesListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->createSubView(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyGestureSlideContentsView$1;-><init>(Lcom/android/internal/widget/SkyGestureSlideContentsView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesturesListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->createSubView(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyGestureSlideContentsView;)Landroid/view/View$OnTouchListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyGestureSlideContentsView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mScreenWidth:I

    return v0
.end method

.method private createSubView(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 129
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesturesListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture:Landroid/view/GestureDetector;

    .line 132
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->setHorizontalScrollBarEnabled(Z)V

    .line 135
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 136
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mScreenWidth:I

    .line 139
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 140
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900d5

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 143
    new-instance v2, Lcom/pantech/providers/skysettings/SKYGestures;

    invoke-direct {v2}, Lcom/pantech/providers/skysettings/SKYGestures;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureLibrary:Lcom/pantech/providers/skysettings/SKYGestures;

    .line 144
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureLibrary:Lcom/pantech/providers/skysettings/SKYGestures;

    invoke-virtual {v2}, Lcom/pantech/providers/skysettings/SKYGestures;->load()V

    .line 146
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureLibrary:Lcom/pantech/providers/skysettings/SKYGestures;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/pantech/providers/skysettings/SKYGestures;->getAllSKYGestureInfo(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture_list:Ljava/util/List;

    .line 147
    const v2, 0x10203d4

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCList:Landroid/widget/ListView;

    .line 148
    const v2, 0x10203d5

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCTextView:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture_list:Ljava/util/List;

    if-eqz v2, :cond_b6

    .line 151
    sget-boolean v2, Lcom/android/internal/widget/SkyGestureSlideContentsView;->DEBUG:Z

    if-eqz v2, :cond_85

    const-string v2, "GestureSlideContentsView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSubView()::mGesture_list.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_85
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_98

    .line 154
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_97
    return-void

    .line 157
    :cond_98
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    new-instance v2, Lcom/android/internal/widget/CustomGestureListAdapter;

    const v3, 0x10900d4

    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture_list:Ljava/util/List;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/internal/widget/CustomGestureListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureListAdapter:Lcom/android/internal/widget/CustomGestureListAdapter;

    .line 161
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureListAdapter:Lcom/android/internal/widget/CustomGestureListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_97

    .line 164
    :cond_b6
    sget-boolean v2, Lcom/android/internal/widget/SkyGestureSlideContentsView;->DEBUG:Z

    if-eqz v2, :cond_c1

    const-string v2, "GestureSlideContentsView"

    const-string v3, "createSubView()::mGesture_list is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_c1
    iget-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCTextView:Landroid/widget/TextView;

    const-string v3, "Wrong Case...Please check me!!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_97
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 201
    const-string v0, "GestureSlideContentsView"

    const-string v1, "SkyGestureSlideContentsView clean..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureLibrary:Lcom/pantech/providers/skysettings/SKYGestures;

    .line 204
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCList:Landroid/widget/ListView;

    .line 205
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mCTextView:Landroid/widget/TextView;

    .line 206
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture_list:Ljava/util/List;

    .line 207
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture:Landroid/view/GestureDetector;

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureListAdapter:Lcom/android/internal/widget/CustomGestureListAdapter;

    if-eqz v0, :cond_1d

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureListAdapter:Lcom/android/internal/widget/CustomGestureListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/CustomGestureListAdapter;->destory()V

    .line 212
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGestureListAdapter:Lcom/android/internal/widget/CustomGestureListAdapter;

    .line 214
    :cond_1d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 177
    iget-object v3, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 182
    .local v2, parentView:Landroid/view/ViewParent;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object v1, v2

    .line 183
    check-cast v1, Lcom/android/internal/widget/SkyGestureSlideView;

    .line 184
    .local v1, paranet:Lcom/android/internal/widget/SkyGestureSlideView;
    invoke-virtual {v1}, Lcom/android/internal/widget/SkyGestureSlideView;->stopCloseSlide()V

    .line 187
    .end local v1           #paranet:Lcom/android/internal/widget/SkyGestureSlideView;
    :cond_2c
    packed-switch v0, :pswitch_data_46

    .line 197
    :goto_2f
    :pswitch_2f
    const/4 v3, 0x1

    return v3

    .line 190
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_3f

    .line 191
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->smoothScrollTo(II)V

    goto :goto_2f

    .line 193
    :cond_3f
    iget v3, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mScreenWidth:I

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/widget/SkyGestureSlideContentsView;->smoothScrollTo(II)V

    goto :goto_2f

    .line 187
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2f
        :pswitch_31
    .end packed-switch
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/internal/widget/SkyGestureSlideContentsView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 173
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    return-void
.end method
