.class public Lcom/android/internal/widget/SKYBGPControlView;
.super Landroid/widget/RelativeLayout;
.source "SKYBGPControlView.java"


# static fields
.field private static final CMDFROM:Ljava/lang/String; = "frombgp"

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDNEXT:Ljava/lang/String; = "next"

.field private static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field private static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SKYBGPControlView"


# instance fields
.field private final MESSAGE_CONFORM_BUTTON:I

.field private final MESSAGE_MARQUEE_OFF:I

.field private final MESSAGE_MARQUEE_ON:I

.field private mAlbumText:Landroid/widget/TextView;

.field private mAttached:I

.field private mDrawer:Landroid/widget/SlidingDrawer;

.field private mHandleBtn:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mNextButton:Landroid/view/View;

.field private mPlayButton:Landroid/view/View;

.field private mPrevButton:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubjectText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_CONFORM_BUTTON:I

    .line 45
    const/16 v0, 0xca

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_MARQUEE_OFF:I

    .line 46
    const/16 v0, 0xcb

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_MARQUEE_ON:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    .line 60
    new-instance v0, Lcom/android/internal/widget/SKYBGPControlView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYBGPControlView$1;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/internal/widget/SKYBGPControlView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYBGPControlView$2;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    invoke-direct {p0}, Lcom/android/internal/widget/SKYBGPControlView;->init()V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_CONFORM_BUTTON:I

    .line 45
    const/16 v0, 0xca

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_MARQUEE_OFF:I

    .line 46
    const/16 v0, 0xcb

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_MARQUEE_ON:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    .line 60
    new-instance v0, Lcom/android/internal/widget/SKYBGPControlView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYBGPControlView$1;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/internal/widget/SKYBGPControlView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYBGPControlView$2;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    invoke-direct {p0}, Lcom/android/internal/widget/SKYBGPControlView;->init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/16 v0, 0xc9

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_CONFORM_BUTTON:I

    .line 45
    const/16 v0, 0xca

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_MARQUEE_OFF:I

    .line 46
    const/16 v0, 0xcb

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->MESSAGE_MARQUEE_ON:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    .line 60
    new-instance v0, Lcom/android/internal/widget/SKYBGPControlView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYBGPControlView$1;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/internal/widget/SKYBGPControlView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SKYBGPControlView$2;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/SKYBGPControlView;->init()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/SlidingDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SKYBGPControlView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SKYBGPControlView;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupImageView(Landroid/widget/ImageView;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 285
    if-eqz p1, :cond_f

    .line 286
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 288
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 290
    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_f
    return-void
.end method

.method private createSubView()V
    .registers 6

    .prologue
    .line 344
    const v2, 0x10203c8

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 345
    .local v1, tempView:Landroid/view/View;
    if-eqz v1, :cond_19

    .line 346
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10804a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :cond_19
    const v2, 0x10203c7

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;

    .line 351
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_30

    .line 352
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;

    const v3, 0x108049e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    :cond_30
    const v2, 0x10203c6

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 355
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v2, :cond_62

    .line 356
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/internal/widget/SKYBGPControlView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SKYBGPControlView$3;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/internal/widget/SKYBGPControlView$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SKYBGPControlView$4;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 373
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Lcom/android/internal/widget/SKYBGPControlView$5;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SKYBGPControlView$5;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->close()V

    .line 402
    :cond_62
    const v2, 0x10203cb

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    .line 403
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    if-eqz v2, :cond_8b

    .line 405
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    new-instance v3, Lcom/android/internal/widget/SKYBGPControlView$6;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SKYBGPControlView$6;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :cond_8b
    const v2, 0x10203cc

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    .line 418
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    if-eqz v2, :cond_b4

    .line 420
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    new-instance v3, Lcom/android/internal/widget/SKYBGPControlView$7;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SKYBGPControlView$7;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :cond_b4
    const v2, 0x10203cd

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    .line 433
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    if-eqz v2, :cond_dd

    .line 435
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    new-instance v3, Lcom/android/internal/widget/SKYBGPControlView$8;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SKYBGPControlView$8;-><init>(Lcom/android/internal/widget/SKYBGPControlView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :cond_dd
    const v2, 0x10203c9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    .line 448
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    if-eqz v2, :cond_f8

    .line 449
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 450
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 453
    :cond_f8
    const v2, 0x10203ca

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    .line 454
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    if-eqz v2, :cond_113

    .line 455
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 456
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 460
    :cond_113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_130

    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_130

    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_130

    .line 462
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_130} :catch_131

    .line 467
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #tempView:Landroid/view/View;
    :cond_130
    :goto_130
    return-void

    .line 465
    :catch_131
    move-exception v2

    goto :goto_130
.end method

.method private init()V
    .registers 6

    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 195
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900d3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 196
    .local v2, v:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 197
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/SKYBGPControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const-string v3, "SKYBGPControlView"

    const-string v4, "SKYBGPControlView inflated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public static recursiveRecycleView(Landroid/view/View;)V
    .registers 7
    .parameter "root"

    .prologue
    const/4 v5, 0x0

    .line 295
    if-nez p0, :cond_4

    .line 327
    :goto_3
    return-void

    .line 298
    :cond_4
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_23

    move-object v2, p0

    .line 299
    check-cast v2, Landroid/view/ViewGroup;

    .line 300
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 301
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1c

    .line 302
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/SKYBGPControlView;->recursiveRecycleView(Landroid/view/View;)V

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 305
    :cond_1c
    instance-of v4, p0, Landroid/widget/AdapterView;

    if-nez v4, :cond_23

    .line 306
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 310
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_23
    instance-of v4, p0, Landroid/widget/ImageView;

    if-eqz v4, :cond_39

    move-object v4, p0

    .line 311
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 312
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_33

    .line 313
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_33
    move-object v4, p0

    .line 315
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 320
    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    :cond_49
    const/4 p0, 0x0

    .line 327
    goto :goto_3
.end method

.method private sendCommand(Ljava/lang/String;)V
    .registers 5
    .parameter "command"

    .prologue
    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_22

    .line 487
    const-string v1, "com.pantech.app.music"

    const-string v2, "com.pantech.app.music.common.MusicPlaybackService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "frombgp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 494
    :cond_22
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 481
    :goto_5
    return-void

    .line 479
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 209
    const-string v0, "SKYBGPControlView"

    const-string v1, "destroy: entered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SKYBGPControlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_26

    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;

    .line 221
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_37

    .line 223
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    :cond_37
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_4a

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 235
    :cond_4a
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_4e

    .line 244
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    if-eqz v0, :cond_57

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_57
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    if-eqz v0, :cond_60

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_60
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    if-eqz v0, :cond_69

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_69
    invoke-static {p0}, Lcom/android/internal/widget/SKYBGPControlView;->recursiveRecycleView(Landroid/view/View;)V

    .line 264
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mNextButton:Landroid/view/View;

    .line 265
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    .line 266
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPrevButton:Landroid/view/View;

    .line 267
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mHandleBtn:Landroid/widget/ImageView;

    .line 268
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    .line 271
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    .line 272
    iput-object v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/SKYBGPControlView;->removeAllViews()V

    .line 281
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 174
    iget v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    .line 175
    const-string v0, "SKYBGPControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/internal/widget/SKYBGPControlView;->createSubView()V

    .line 178
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 184
    iget v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    if-lez v0, :cond_30

    .line 186
    const-string v0, "SKYBGPControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAttached:I

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/widget/SKYBGPControlView;->destroy()V

    .line 191
    :cond_30
    return-void
.end method

.method public open()V
    .registers 2

    .prologue
    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->open()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 474
    :goto_5
    return-void

    .line 472
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setBGPState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "playing"
    .parameter "artistName"
    .parameter "albumName"
    .parameter "trackName"

    .prologue
    .line 499
    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    .line 500
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    const v1, 0x10806c0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 506
    :goto_b
    if-eqz p2, :cond_11

    if-eqz p3, :cond_11

    if-nez p4, :cond_2d

    .line 509
    :cond_11
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    const v1, 0x10405a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    const v1, 0x10405a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 534
    :goto_21
    return-void

    .line 503
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mPlayButton:Landroid/view/View;

    const v1, 0x10806c1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b

    .line 532
    :catch_2b
    move-exception v0

    goto :goto_21

    .line 529
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mSubjectText:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/widget/SKYBGPControlView;->mAlbumText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_2b

    goto :goto_21
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 537
    const v1, 0x10203c7

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 539
    :cond_c
    const v1, 0x10203c6

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    :cond_18
    const v1, 0x10203cb

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    :cond_24
    const v1, 0x10203cc

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_30

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 545
    :cond_30
    const v1, 0x10203cd

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    :cond_3c
    const v1, 0x10203c9

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_48

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 549
    :cond_48
    const v1, 0x10203ca

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SKYBGPControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_54

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 552
    :cond_54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 553
    return-void
.end method
