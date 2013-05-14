.class public Lcom/android/internal/widget/SkyGestureSlideView;
.super Landroid/widget/RelativeLayout;
.source "SkyGestureSlideView.java"


# static fields
.field private static DEBUG:Z = false

.field public static final SKY_GESTURE_SLIDE_EVENT_CALL:I = 0x6e

.field public static final SKY_GESTURE_SLIDE_EVENT_EMAIL:I = 0x70

.field public static final SKY_GESTURE_SLIDE_EVENT_MESSAGE:I = 0x6f

.field private static final TAG:Ljava/lang/String; = "SkyGestureSlideView"


# instance fields
.field private final ACTION_CLOSE_SLIDE:I

.field private final ACTION_CONFORM_BUTTON:I

.field private mCallCount:I

.field private mDrawer:Landroid/widget/SlidingDrawer;

.field private mEmailCount:I

.field private mHandleBtn:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mMsgCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/SkyGestureSlideView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->ACTION_CLOSE_SLIDE:I

    .line 39
    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->ACTION_CONFORM_BUTTON:I

    .line 41
    iput v1, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mCallCount:I

    .line 42
    iput v1, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mMsgCount:I

    .line 43
    iput v1, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mEmailCount:I

    .line 45
    new-instance v0, Lcom/android/internal/widget/SkyGestureSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyGestureSlideView$1;-><init>(Lcom/android/internal/widget/SkyGestureSlideView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSlideView;->createSubView(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->ACTION_CLOSE_SLIDE:I

    .line 39
    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->ACTION_CONFORM_BUTTON:I

    .line 41
    iput v1, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mCallCount:I

    .line 42
    iput v1, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mMsgCount:I

    .line 43
    iput v1, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mEmailCount:I

    .line 45
    new-instance v0, Lcom/android/internal/widget/SkyGestureSlideView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyGestureSlideView$1;-><init>(Lcom/android/internal/widget/SkyGestureSlideView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyGestureSlideView;->createSubView(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/SlidingDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyGestureSlideView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustSlideShowing(II)V
    .registers 7
    .parameter "eventType"
    .parameter "value"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, tmpValue:I
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_35

    .line 219
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mCallCount:I

    .line 220
    iput p2, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mCallCount:I

    .line 229
    :cond_9
    :goto_9
    if-eq v0, p2, :cond_34

    .line 230
    sget-boolean v1, Lcom/android/internal/widget/SkyGestureSlideView;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "SkyGestureSlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSlideShowing()::tmpValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyGestureSlideView;->openSlide()V

    .line 233
    :cond_34
    return-void

    .line 221
    :cond_35
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3e

    .line 222
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mMsgCount:I

    .line 223
    iput p2, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mMsgCount:I

    goto :goto_9

    .line 224
    :cond_3e
    const/16 v1, 0x70

    if-ne p1, v1, :cond_9

    .line 225
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mEmailCount:I

    .line 226
    iput p2, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mEmailCount:I

    goto :goto_9
.end method

.method private createSubView(Landroid/content/Context;)V
    .registers 8
    .parameter "_context"

    .prologue
    .line 87
    move-object v0, p1

    .line 90
    .local v0, context:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 91
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900d6

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    const v4, 0x10203c7

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;

    .line 95
    const v4, 0x10203c6

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SlidingDrawer;

    iput-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 96
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    new-instance v5, Lcom/android/internal/widget/SkyGestureSlideView$2;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/widget/SkyGestureSlideView$2;-><init>(Lcom/android/internal/widget/SkyGestureSlideView;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 110
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    new-instance v5, Lcom/android/internal/widget/SkyGestureSlideView$3;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/widget/SkyGestureSlideView$3;-><init>(Lcom/android/internal/widget/SkyGestureSlideView;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 124
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    new-instance v5, Lcom/android/internal/widget/SkyGestureSlideView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/SkyGestureSlideView$4;-><init>(Lcom/android/internal/widget/SkyGestureSlideView;)V

    invoke-virtual {v4, v5}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 145
    :try_start_43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sky_gesture_slide_viewmode"

    invoke-static {v4, v5}, Lcom/pantech/providers/skysettings/SKYDisplay;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_43 .. :try_end_4c} :catch_5d

    move-result v3

    .line 150
    .local v3, slideState:I
    :goto_4d
    if-nez v3, :cond_60

    .line 151
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4}, Landroid/widget/SlidingDrawer;->close()V

    .line 152
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;

    const v5, 0x10806e2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :goto_5c
    return-void

    .line 146
    .end local v3           #slideState:I
    :catch_5d
    move-exception v2

    .line 147
    .local v2, settingEx:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v3, 0x1

    .restart local v3       #slideState:I
    goto :goto_4d

    .line 154
    .end local v2           #settingEx:Landroid/provider/Settings$SettingNotFoundException;
    :cond_60
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4}, Landroid/widget/SlidingDrawer;->open()V

    .line 155
    iget-object v4, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;

    const v5, 0x10806e0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5c
.end method


# virtual methods
.method public getEventCount(I)I
    .registers 3
    .parameter "eventType"

    .prologue
    .line 236
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_7

    .line 237
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mCallCount:I

    .line 243
    :goto_6
    return v0

    .line 238
    :cond_7
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_e

    .line 239
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mMsgCount:I

    goto :goto_6

    .line 240
    :cond_e
    const/16 v0, 0x70

    if-ne p1, v0, :cond_15

    .line 241
    iget v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mEmailCount:I

    goto :goto_6

    .line 243
    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v0, "SkyGestureSlideView"

    const-string v1, "SkyGestureSlideView clean..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/SkyGestureSlideView;->recursiveRecycleView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_20

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 255
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 258
    :cond_20
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandleBtn:Landroid/widget/ImageView;

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iput-object v2, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    .line 265
    :cond_36
    return-void
.end method

.method public openSlide()V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    :cond_1e
    return-void
.end method

.method public recursiveRecycleView(Landroid/view/View;)V
    .registers 8
    .parameter "root"

    .prologue
    const/4 v5, 0x0

    .line 268
    if-nez p1, :cond_4

    .line 298
    :goto_3
    return-void

    .line 271
    :cond_4
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_23

    move-object v2, p1

    .line 272
    check-cast v2, Landroid/view/ViewGroup;

    .line 273
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 274
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1c

    .line 275
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyGestureSlideView;->recursiveRecycleView(Landroid/view/View;)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 278
    :cond_1c
    instance-of v4, p1, Landroid/widget/AdapterView;

    if-nez v4, :cond_23

    .line 279
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 283
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_23
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_39

    move-object v4, p1

    .line 284
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_33

    .line 286
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_33
    move-object v4, p1

    .line 288
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 293
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_49
    const/4 p1, 0x0

    .line 298
    goto :goto_3
.end method

.method public setEvent(II)V
    .registers 7
    .parameter "eventType"
    .parameter "value"

    .prologue
    .line 183
    sget-boolean v1, Lcom/android/internal/widget/SkyGestureSlideView;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "SkyGestureSlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEvent()::eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_26
    packed-switch p1, :pswitch_data_74

    .line 201
    const-string v1, "SkyGestureSlideView"

    const-string v2, "wrong event type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_30
    return-void

    .line 189
    :pswitch_31
    const v1, 0x10203d1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    .local v0, eventText:Landroid/widget/TextView;
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    if-nez p2, :cond_6c

    .line 208
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30

    .line 193
    .end local v0           #eventText:Landroid/widget/TextView;
    :pswitch_58
    const v1, 0x10203d2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    .restart local v0       #eventText:Landroid/widget/TextView;
    goto :goto_3a

    .line 197
    .end local v0           #eventText:Landroid/widget/TextView;
    :pswitch_62
    const v1, 0x10203d3

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    .restart local v0       #eventText:Landroid/widget/TextView;
    goto :goto_3a

    .line 210
    :cond_6c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SkyGestureSlideView;->adjustSlideShowing(II)V

    goto :goto_30

    .line 187
    :pswitch_data_74
    .packed-switch 0x6e
        :pswitch_31
        :pswitch_58
        :pswitch_62
    .end packed-switch
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 164
    const v0, 0x10203c6

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    const v0, 0x10203c8

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    const v0, 0x10203d4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyGestureSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    return-void
.end method

.method public stopCloseSlide()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/SkyGestureSlideView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    return-void
.end method
