.class public Lcom/android/internal/widget/SkyVisualBackgroundView;
.super Landroid/widget/FrameLayout;
.source "SkyVisualBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkyVisualBackgroundView$FileDecodeFailedException;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final EACH_IMAGE_HEIGHT_LAND:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EACH_IMAGE_HEIGHT_PORT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EACH_IMAGE_WIDTH_LAND:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EACH_IMAGE_WIDTH_PORT:I = 0x0

.field private static final IMAGE_LOOPING_TIME:I = 0x1f4

.field private static final MAX_BIGIMAGE_COUNT:I = 0x2

.field private static final MAX_PLANNER_COUNT:I = 0x2

.field private static final MAX_SMALLIMAGE_COUNT:I = 0x18

.field private static final SCREEN_TYPE:Ljava/lang/String; = "XHDPI_FULL"

.field private static final SMALL_LONG_DIRECTION_IMG_COUNT:I = 0x6

.field private static final SMALL_SHORT_DIRECTION_IMG_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SkyVisualBackgroundView"

.field private static final VISIBLE_DEFAULT_IMAGE:I = 0x5

.field private static sWorker:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private Debug:Z

.field private mAcquireArea_big:[[Z

.field private mAcquireArea_small:[Z

.field private mBigImageIDArray:[I

.field private mCursorPlanner:Landroid/database/Cursor;

.field private mDefaultImageArray:[Ljava/lang/Integer;

.field private mDefaultImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEachImage_height:I

.field private mEachImage_width:I

.field private mFinalBitmap_big:[Landroid/graphics/Bitmap;

.field private mFinalBitmap_small:[Landroid/graphics/Bitmap;

.field private mHoriImageCount:I

.field private mImageHandler:Landroid/os/Handler;

.field private mImageRun:Ljava/lang/Runnable;

.field private mIsPortraitScreen:Z

.field private mNowAniLoop:Z

.field private mPlannerIDArray:[I

.field private mSettedBigImageCount:I

.field private mSettedPlannerCount:I

.field private mSettedSmallImageCount:I

.field private mSmallImageIDArray:[I

.field private mStopAnything:Z

.field private mTargetBigImageCount:I

.field private mTargetPlannerCount:I

.field private mUserImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerImageCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0xd5

    const/16 v2, 0xb8

    .line 64
    const-string v0, "XHDPI_FULL"

    const-string v1, "HDPI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 65
    const/16 v0, 0x78

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_PORT:I

    .line 66
    const/16 v0, 0x7f

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_PORT:I

    .line 67
    const/16 v0, 0x85

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_LAND:I

    .line 68
    const/16 v0, 0x6e

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_LAND:I

    .line 213
    :goto_20
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0xff

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->sWorker:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    .line 69
    :cond_37
    const-string v0, "XHDPI_FULL"

    const-string v1, "OSCAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 70
    const/16 v0, 0x87

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_PORT:I

    .line 71
    const/16 v0, 0x8e

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_PORT:I

    .line 72
    sput v3, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_LAND:I

    .line 73
    sput v2, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_LAND:I

    goto :goto_20

    .line 74
    :cond_4e
    const-string v0, "XHDPI_FULL"

    const-string v1, "XHDPI_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 75
    sput v4, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_PORT:I

    .line 76
    const/16 v0, 0xce

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_PORT:I

    .line 77
    sput v3, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_LAND:I

    .line 78
    sput v2, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_LAND:I

    goto :goto_20

    .line 80
    :cond_63
    sput v4, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_PORT:I

    .line 81
    const/16 v0, 0xbd

    sput v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_PORT:I

    .line 82
    sput v3, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_LAND:I

    .line 83
    sput v2, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_LAND:I

    goto :goto_20
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_18a

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mPlannerIDArray:[I

    .line 97
    new-array v0, v2, [I

    fill-array-data v0, :array_192

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mBigImageIDArray:[I

    .line 102
    new-array v0, v5, [I

    fill-array-data v0, :array_19a

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSmallImageIDArray:[I

    .line 129
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x108082e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x108082f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x1080830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const v2, 0x1080831

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x1080832

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x1080833

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x1080834

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x1080835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x1080836

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1080837

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1080838

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x1080839

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x108083a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x108083b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x108083c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x108083d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x108083e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x108083f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x1080840

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x1080841

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x1080842

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x1080843

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x1080844

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1080845

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x1080846

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x19

    const v2, 0x1080847

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x1080848

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x1080849

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageArray:[Ljava/lang/Integer;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    .line 167
    iput-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mIsPortraitScreen:Z

    .line 169
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    .line 170
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    .line 172
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    .line 173
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    .line 179
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    .line 180
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    .line 181
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    .line 194
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mNowAniLoop:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mStopAnything:Z

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/android/internal/widget/SkyVisualBackgroundView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualBackgroundView$1;-><init>(Lcom/android/internal/widget/SkyVisualBackgroundView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    .line 218
    const-string v0, "SkyVisualBackgroundView"

    const-string v1, "SkyVisualBackgroundView() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->createUserData()V

    .line 221
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->initValue()V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->createScreen()V

    .line 223
    return-void

    .line 92
    nop

    :array_18a
    .array-data 0x4
        0x19t 0x4t 0x2t 0x1t
        0x1at 0x4t 0x2t 0x1t
    .end array-data

    .line 97
    :array_192
    .array-data 0x4
        0x17t 0x4t 0x2t 0x1t
        0x18t 0x4t 0x2t 0x1t
    .end array-data

    .line 102
    :array_19a
    .array-data 0x4
        0xdet 0x3t 0x2t 0x1t
        0xe4t 0x3t 0x2t 0x1t
        0xeat 0x3t 0x2t 0x1t
        0xf0t 0x3t 0x2t 0x1t
        0xdft 0x3t 0x2t 0x1t
        0xe5t 0x3t 0x2t 0x1t
        0xebt 0x3t 0x2t 0x1t
        0xf1t 0x3t 0x2t 0x1t
        0xe0t 0x3t 0x2t 0x1t
        0xe6t 0x3t 0x2t 0x1t
        0xect 0x3t 0x2t 0x1t
        0xf2t 0x3t 0x2t 0x1t
        0xe1t 0x3t 0x2t 0x1t
        0xe7t 0x3t 0x2t 0x1t
        0xedt 0x3t 0x2t 0x1t
        0xf3t 0x3t 0x2t 0x1t
        0xe2t 0x3t 0x2t 0x1t
        0xe8t 0x3t 0x2t 0x1t
        0xeet 0x3t 0x2t 0x1t
        0xf4t 0x3t 0x2t 0x1t
        0xe3t 0x3t 0x2t 0x1t
        0xe9t 0x3t 0x2t 0x1t
        0xeft 0x3t 0x2t 0x1t
        0xf5t 0x3t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_18a

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mPlannerIDArray:[I

    .line 97
    new-array v0, v2, [I

    fill-array-data v0, :array_192

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mBigImageIDArray:[I

    .line 102
    new-array v0, v5, [I

    fill-array-data v0, :array_19a

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSmallImageIDArray:[I

    .line 129
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x108082e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x108082f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x1080830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const v2, 0x1080831

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x1080832

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x1080833

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x1080834

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x1080835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x1080836

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1080837

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1080838

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x1080839

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x108083a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x108083b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x108083c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x108083d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x108083e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x108083f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x1080840

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x1080841

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x1080842

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x1080843

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x1080844

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1080845

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x1080846

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x19

    const v2, 0x1080847

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x1080848

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x1080849

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageArray:[Ljava/lang/Integer;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    .line 167
    iput-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mIsPortraitScreen:Z

    .line 169
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    .line 170
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    .line 172
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    .line 173
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    .line 179
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    .line 180
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    .line 181
    iput v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    .line 194
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mNowAniLoop:Z

    .line 196
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mStopAnything:Z

    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/android/internal/widget/SkyVisualBackgroundView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualBackgroundView$1;-><init>(Lcom/android/internal/widget/SkyVisualBackgroundView;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    .line 228
    const-string v0, "SkyVisualBackgroundView"

    const-string v1, "SkyVisualBackgroundView() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->createUserData()V

    .line 231
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->initValue()V

    .line 232
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->createScreen()V

    .line 233
    return-void

    .line 92
    nop

    :array_18a
    .array-data 0x4
        0x19t 0x4t 0x2t 0x1t
        0x1at 0x4t 0x2t 0x1t
    .end array-data

    .line 97
    :array_192
    .array-data 0x4
        0x17t 0x4t 0x2t 0x1t
        0x18t 0x4t 0x2t 0x1t
    .end array-data

    .line 102
    :array_19a
    .array-data 0x4
        0xdet 0x3t 0x2t 0x1t
        0xe4t 0x3t 0x2t 0x1t
        0xeat 0x3t 0x2t 0x1t
        0xf0t 0x3t 0x2t 0x1t
        0xdft 0x3t 0x2t 0x1t
        0xe5t 0x3t 0x2t 0x1t
        0xebt 0x3t 0x2t 0x1t
        0xf1t 0x3t 0x2t 0x1t
        0xe0t 0x3t 0x2t 0x1t
        0xe6t 0x3t 0x2t 0x1t
        0xect 0x3t 0x2t 0x1t
        0xf2t 0x3t 0x2t 0x1t
        0xe1t 0x3t 0x2t 0x1t
        0xe7t 0x3t 0x2t 0x1t
        0xedt 0x3t 0x2t 0x1t
        0xf3t 0x3t 0x2t 0x1t
        0xe2t 0x3t 0x2t 0x1t
        0xe8t 0x3t 0x2t 0x1t
        0xeet 0x3t 0x2t 0x1t
        0xf4t 0x3t 0x2t 0x1t
        0xe3t 0x3t 0x2t 0x1t
        0xe9t 0x3t 0x2t 0x1t
        0xeft 0x3t 0x2t 0x1t
        0xf5t 0x3t 0x2t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyVisualBackgroundView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->fillImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyVisualBackgroundView;Ljava/io/File;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getImageList(Ljava/io/File;)V

    return-void
.end method

.method private calculateBottomImagePosition()V
    .registers 10

    .prologue
    .line 711
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 717
    .local v0, ran:Ljava/util/Random;
    :cond_5
    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 718
    .local v3, ranViewId:I
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_small:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_5

    .line 722
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSmallImageIDArray:[I

    aget v5, v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SkyVisualBackgroundView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SkyVisualDissolveView;

    .line 725
    .local v2, ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-eqz v5, :cond_51

    .line 726
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    iget v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    iget v8, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    invoke-direct {p0, v7, v8}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getUserBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v5, v6

    .line 731
    :goto_30
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_59

    .line 732
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    iget v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/widget/SkyVisualDissolveView;->startDraw(Landroid/graphics/Bitmap;II)V

    .line 751
    :goto_45
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_small:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 752
    iget v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    .line 753
    return-void

    .line 728
    :cond_51
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    goto :goto_30

    .line 734
    :cond_59
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 735
    .local v1, ranDefault:I
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 743
    .local v4, targetDefaultImageId:I
    iget v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/SkyVisualDissolveView;->startDraw(II)V

    .line 748
    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_45
.end method

.method private calculateTopImagePosition()V
    .registers 21

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "calculateTopImagePosition() start..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    move-object/from16 v16, v0

    if-nez v16, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->createPlannerCursor()V

    .line 539
    :cond_1a
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 541
    .local v8, ran:Ljava/util/Random;
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetBigImageCount:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetPlannerCount:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_346

    .line 544
    const/4 v11, -0x1

    .local v11, ranX:I
    const/4 v12, -0x1

    .line 547
    .local v12, ranY:I
    const/4 v6, 0x0

    .local v6, limitedCount:I
    :goto_44
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v6, v0, :cond_9e

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    aget-boolean v16, v16, v11

    if-nez v16, :cond_108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget-object v16, v16, v17

    aget-boolean v16, v16, v11

    if-nez v16, :cond_108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    add-int/lit8 v17, v11, 0x1

    aget-boolean v16, v16, v17

    if-nez v16, :cond_108

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget-object v16, v16, v17

    add-int/lit8 v17, v11, 0x1

    aget-boolean v16, v16, v17

    if-nez v16, :cond_108

    .line 560
    :cond_9e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_cc

    const-string v16, "SkyVisualBackgroundView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "=== Selected Value ranX = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", ranY = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_cc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetPlannerCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1dd

    .line 565
    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "--------------------------------------- Plan Image"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_f1

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_10e

    .line 569
    :cond_f1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    .line 570
    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "avoid to deaklock :: can\'t set image, but mSettedPlannerCount++"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 557
    :cond_108
    const/4 v11, -0x1

    .line 558
    const/4 v12, -0x1

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_44

    .line 574
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 578
    .local v3, date:J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v16, "MM&&dd"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 579
    .local v5, df:Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "&&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 582
    .local v13, strDate:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mPlannerIDArray:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    move/from16 v17, v0

    aget v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualBackgroundView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/SkyVisualPlannerView;

    .line 585
    .local v7, plannerView:Lcom/android/internal/widget/SkyVisualPlannerView;
    invoke-virtual {v7}, Lcom/android/internal/widget/SkyVisualPlannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 586
    .local v15, targetParams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    move/from16 v16, v0

    mul-int v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    move/from16 v17, v0

    mul-int v17, v17, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 590
    const/16 v16, 0x0

    aget-object v16, v13, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/widget/SkyVisualPlannerView;->setPlan(II)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x1

    aput-boolean v17, v16, v11

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    add-int/lit8 v17, v11, 0x1

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget-object v16, v16, v17

    const/16 v17, 0x1

    aput-boolean v17, v16, v11

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget-object v16, v16, v17

    add-int/lit8 v17, v11, 0x1

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    goto/16 :goto_1f

    .line 600
    .end local v3           #date:J
    .end local v5           #df:Ljava/text/SimpleDateFormat;
    .end local v7           #plannerView:Lcom/android/internal/widget/SkyVisualPlannerView;
    .end local v13           #strDate:[Ljava/lang/String;
    .end local v15           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1dd
    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "--------------------------------------- Big Image"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_1f0

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_207

    .line 604
    :cond_1f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    .line 605
    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "avoid to deaklock :: can\'t set image, but mSettedBigImageCount++"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 610
    :cond_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mBigImageIDArray:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v17, v0

    aget v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualBackgroundView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/SkyVisualDissolveView;

    .line 611
    .local v10, ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    invoke-virtual {v10}, Lcom/android/internal/widget/SkyVisualDissolveView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    .restart local v15       #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    move/from16 v16, v0

    mul-int v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    move/from16 v17, v0

    mul-int v17, v17, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 615
    invoke-virtual {v10, v15}, Lcom/android/internal/widget/SkyVisualDissolveView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    if-eqz v16, :cond_2ef

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v17, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v18, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getUserBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v18

    aput-object v18, v16, v17

    .line 620
    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "Big Image setted user bitmap"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    if-eqz v16, :cond_308

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/widget/SkyVisualDissolveView;->startDraw(Landroid/graphics/Bitmap;II)V

    .line 646
    :goto_29f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    const/16 v17, 0x1

    aput-boolean v17, v16, v11

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    aget-object v16, v16, v12

    add-int/lit8 v17, v11, 0x1

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v16, v0

    if-nez v16, :cond_2df

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget-object v16, v16, v17

    const/16 v17, 0x1

    aput-boolean v17, v16, v11

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    move-object/from16 v16, v0

    add-int/lit8 v17, v12, 0x1

    aget-object v16, v16, v17

    add-int/lit8 v17, v11, 0x1

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 654
    :cond_2df
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    goto/16 :goto_1f

    .line 622
    :cond_2ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    move/from16 v17, v0

    const/16 v18, 0x0

    aput-object v18, v16, v17

    .line 623
    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "Big Image setted default drawable"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_270

    .line 629
    :cond_308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 630
    .local v9, ranDefault:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 638
    .local v14, targetDefaultImageId:I
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/widget/SkyVisualDissolveView;->startDraw(II)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_29f

    .line 657
    .end local v6           #limitedCount:I
    .end local v9           #ranDefault:I
    .end local v10           #ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    .end local v11           #ranX:I
    .end local v12           #ranY:I
    .end local v14           #targetDefaultImageId:I
    .end local v15           #targetParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_355

    const-string v16, "SkyVisualBackgroundView"

    const-string v17, "calculateTopImagePosition() end..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_355
    return-void
.end method

.method private cleanupImageView(Landroid/widget/ImageView;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 305
    if-eqz p1, :cond_f

    .line 306
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 307
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 308
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    :cond_c
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_f
    return-void
.end method

.method private createFolder()Ljava/lang/String;
    .registers 8

    .prologue
    .line 401
    const/4 v3, 0x0

    .line 405
    .local v3, targetDirPath:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, str:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 407
    const-string v4, "SkyVisualBackgroundView"

    const-string v5, "sdcard mounted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/VisualHold"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_56

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 414
    const-string v4, "SkyVisualBackgroundView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1           #file:Ljava/io/File;
    .end local v2           #str:Ljava/lang/String;
    :goto_55
    return-object v3

    .line 416
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #str:Ljava/lang/String;
    :cond_56
    const-string v4, "SkyVisualBackgroundView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_6f

    goto :goto_55

    .line 421
    .end local v1           #file:Ljava/io/File;
    .end local v2           #str:Ljava/lang/String;
    :catch_6f
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SkyVisualBackgroundView"

    const-string v5, "Exception in createFolder()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #str:Ljava/lang/String;
    :cond_78
    :try_start_78
    const-string v4, "SkyVisualBackgroundView"

    const-string v5, "sdcard unmount, use default image."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_6f

    goto :goto_55
.end method

.method private createPlannerCursor()V
    .registers 20

    .prologue
    .line 466
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 469
    .local v16, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 470
    .local v11, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 471
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 473
    .local v14, nowTime:J
    new-instance v2, Ljava/util/Date;

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit16 v3, v6, -0x76c

    const/4 v6, 0x2

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    const/4 v6, 0x5

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 476
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 478
    .local v9, afterTime:J
    const-string v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 479
    .local v3, calendars:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "dtstart"

    aput-object v6, v4, v2

    .line 480
    .local v4, projection:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dtstart>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND dtstart<"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, selection:Ljava/lang/String;
    const-string v7, "dtstart asc"

    .line 483
    .local v7, orderBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    if-eqz v2, :cond_79

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_79
    const/4 v6, 0x0

    move-object/from16 v2, v16

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    if-eqz v2, :cond_d7

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 488
    .local v12, dataCount:I
    const-string v2, "SkyVisualBackgroundView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createCursor()::Planner Count is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v2, 0x2

    if-ge v12, v2, :cond_d5

    .end local v12           #dataCount:I
    :goto_ad
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetPlannerCount:I

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 496
    :goto_b8
    const-string v2, "SkyVisualBackgroundView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTargetPlannerCount  is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetPlannerCount:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v3           #calendars:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v9           #afterTime:J
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v14           #nowTime:J
    .end local v16           #resolver:Landroid/content/ContentResolver;
    :goto_d4
    return-void

    .line 490
    .restart local v3       #calendars:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    .restart local v9       #afterTime:J
    .restart local v11       #calendar:Ljava/util/Calendar;
    .restart local v12       #dataCount:I
    .restart local v14       #nowTime:J
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    :cond_d5
    const/4 v12, 0x2

    goto :goto_ad

    .line 493
    .end local v12           #dataCount:I
    :cond_d7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetPlannerCount:I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_dc} :catch_dd

    goto :goto_b8

    .line 497
    .end local v3           #calendars:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v9           #afterTime:J
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v14           #nowTime:J
    .end local v16           #resolver:Landroid/content/ContentResolver;
    :catch_dd
    move-exception v13

    .line 498
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "SkyVisualBackgroundView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createCursor fail..because "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method private createScreen()V
    .registers 8

    .prologue
    .line 503
    iget-boolean v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    if-eqz v5, :cond_b

    const-string v5, "SkyVisualBackgroundView"

    const-string v6, "createScreen() called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 506
    .local v1, bottom_inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 508
    .local v0, bottomView:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mIsPortraitScreen:Z

    if-eqz v5, :cond_45

    .line 510
    const v5, 0x10900da

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 516
    :goto_23
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 517
    .local v4, top_inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 519
    .local v3, topView:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mIsPortraitScreen:Z

    if-eqz v5, :cond_4d

    .line 521
    const v5, 0x10900df

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 528
    :goto_3b
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3c
    const/4 v5, 0x5

    if-ge v2, v5, :cond_55

    .line 529
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->calculateBottomImagePosition()V

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 513
    .end local v2           #i:I
    .end local v3           #topView:Landroid/view/View;
    .end local v4           #top_inflater:Landroid/view/LayoutInflater;
    :cond_45
    const v5, 0x10900d9

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_23

    .line 524
    .restart local v3       #topView:Landroid/view/View;
    .restart local v4       #top_inflater:Landroid/view/LayoutInflater;
    :cond_4d
    const v5, 0x10900de

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3b

    .line 531
    .restart local v2       #i:I
    :cond_55
    return-void
.end method

.method private createUserData()V
    .registers 4

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getUserFolderList()[Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, userImageDirPaths:[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/widget/SkyVisualBackgroundView;->sWorker:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/internal/widget/SkyVisualBackgroundView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/SkyVisualBackgroundView$2;-><init>(Lcom/android/internal/widget/SkyVisualBackgroundView;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method private declared-synchronized fillImage()V
    .registers 6

    .prologue
    .line 692
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 693
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_21

    .line 694
    const-string v1, "SkyVisualBackgroundView"

    const-string v2, "screen is off, stop animation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->stopAnimation()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_34

    .line 708
    :goto_1f
    monitor-exit p0

    return-void

    .line 700
    :cond_21
    :try_start_21
    iget v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_37

    .line 701
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->calculateBottomImagePosition()V

    .line 702
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_34

    goto :goto_1f

    .line 692
    .end local v0           #pm:Landroid/os/PowerManager;
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1

    .line 704
    .restart local v0       #pm:Landroid/os/PowerManager;
    :cond_37
    :try_start_37
    const-string v1, "SkyVisualBackgroundView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete small image, count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->calculateTopImagePosition()V

    .line 706
    const-string v1, "SkyVisualBackgroundView"

    const-string v2, "Complete Top view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_34

    goto :goto_1f
.end method

.method private getImageList(Ljava/io/File;)V
    .registers 6
    .parameter "aFile"

    .prologue
    .line 449
    iget-boolean v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mStopAnything:Z

    if-eqz v2, :cond_5

    .line 460
    :cond_4
    :goto_4
    return-void

    .line 451
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 452
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 453
    :cond_19
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 455
    .local v1, listOfFiles:[Ljava/io/File;
    if-eqz v1, :cond_4

    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 457
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getImageList(Ljava/io/File;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public static getOptimezedBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "filePath"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/SkyVisualBackgroundView$FileDecodeFailedException;
        }
    .end annotation

    .prologue
    .line 837
    const/4 v3, 0x0

    .line 838
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 840
    .local v6, res:Landroid/graphics/Bitmap;
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_72
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_4e

    .line 841
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_7
    invoke-static {p0, v4, p2, p3}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getOptimizedBitmapOption(Landroid/content/Context;Ljava/io/FileInputStream;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 842
    .local v0, bmpFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    if-nez v0, :cond_22

    .line 843
    new-instance v7, Lcom/android/internal/widget/SkyVisualBackgroundView$FileDecodeFailedException;

    invoke-direct {v7}, Lcom/android/internal/widget/SkyVisualBackgroundView$FileDecodeFailedException;-><init>()V

    throw v7
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_69
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_6c

    .line 855
    .end local v0           #bmpFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_13
    move-exception v5

    move-object v3, v4

    .line 856
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    :goto_15
    :try_start_15
    const-string v7, "SkyVisualBackgroundView"

    const-string v8, "File not Found"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_5e

    .line 863
    if-eqz v3, :cond_21

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_65

    .line 867
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    :cond_21
    :goto_21
    return-object v6

    .line 846
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bmpFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_22
    if-eqz v4, :cond_27

    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 850
    :cond_27
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_69
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2c} :catch_13
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_6c

    .line 851
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    :try_start_2d
    invoke-static {v3, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 853
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_36} :catch_72
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_4e

    .line 863
    :cond_36
    if-eqz v3, :cond_21

    :try_start_38
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_21

    .line 864
    :catch_3c
    move-exception v7

    goto :goto_21

    .line 857
    .end local v0           #bmpFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_3e
    move-exception v1

    .line 858
    .local v1, e:Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    const-string v7, "SkyVisualBackgroundView"

    const-string v8, "IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_5e

    .line 863
    if-eqz v3, :cond_21

    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_21

    .line 864
    :catch_4c
    move-exception v7

    goto :goto_21

    .line 859
    .end local v1           #e:Ljava/io/IOException;
    :catch_4e
    move-exception v2

    .line 860
    .local v2, exception:Ljava/lang/Exception;
    :goto_4f
    :try_start_4f
    const-string v7, "SkyVisualBackgroundView"

    const-string v8, "Exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5e

    .line 863
    if-eqz v3, :cond_21

    :try_start_58
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_21

    .line 864
    :catch_5c
    move-exception v7

    goto :goto_21

    .line 862
    .end local v2           #exception:Ljava/lang/Exception;
    :catchall_5e
    move-exception v7

    .line 863
    :goto_5f
    if-eqz v3, :cond_64

    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_67

    .line 865
    :cond_64
    :goto_64
    throw v7

    .line 864
    .restart local v5       #fnfe:Ljava/io/FileNotFoundException;
    :catch_65
    move-exception v7

    goto :goto_21

    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    :catch_67
    move-exception v8

    goto :goto_64

    .line 862
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_69
    move-exception v7

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_5f

    .line 859
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6c
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4f

    .line 857
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6f
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3f

    .line 855
    :catch_72
    move-exception v5

    goto :goto_15
.end method

.method private static getOptimizedBitmapOption(Landroid/content/Context;III)Landroid/graphics/BitmapFactory$Options;
    .registers 10
    .parameter "context"
    .parameter "resId"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v5, 0x1

    .line 789
    if-nez p0, :cond_5

    .line 790
    const/4 v0, 0x0

    .line 807
    :goto_4
    return-object v0

    .line 792
    :cond_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 793
    .local v0, bmpFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 797
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 798
    .local v1, hRatio:I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 800
    .local v2, wRatio:I
    if-gt v1, v5, :cond_2d

    if-le v2, v5, :cond_31

    .line 801
    :cond_2d
    if-le v1, v2, :cond_38

    .end local v1           #hRatio:I
    :goto_2f
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 803
    :cond_31
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 805
    const/4 v3, 0x2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4

    .restart local v1       #hRatio:I
    :cond_38
    move v1, v2

    .line 801
    goto :goto_2f
.end method

.method private static getOptimizedBitmapOption(Landroid/content/Context;Ljava/io/FileInputStream;II)Landroid/graphics/BitmapFactory$Options;
    .registers 11
    .parameter "context"
    .parameter "fis"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v6, 0x1

    .line 815
    if-eqz p1, :cond_5

    if-nez p0, :cond_7

    .line 816
    :cond_5
    const/4 v0, 0x0

    .line 832
    :goto_6
    return-object v0

    .line 818
    :cond_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 819
    .local v0, bmpFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 821
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 822
    .local v2, r:Landroid/graphics/Rect;
    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 824
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 825
    .local v1, hRatio:I
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    int-to-float v5, p3

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 827
    .local v3, wRatio:I
    if-gt v1, v6, :cond_30

    if-le v3, v6, :cond_34

    .line 828
    :cond_30
    if-le v1, v3, :cond_38

    .end local v1           #hRatio:I
    :goto_32
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 830
    :cond_34
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    goto :goto_6

    .restart local v1       #hRatio:I
    :cond_38
    move v1, v3

    .line 828
    goto :goto_32
.end method

.method private getUserBitmap(II)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 661
    const/4 v5, 0x0

    .line 662
    .local v5, src:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 666
    .local v3, ran:Ljava/util/Random;
    :try_start_7
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    if-nez v7, :cond_c

    .line 687
    :goto_b
    return-object v6

    .line 668
    :cond_c
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 670
    .local v0, dataCount:I
    if-gtz v0, :cond_21

    .line 671
    iget-boolean v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    if-eqz v7, :cond_1f

    const-string v7, "SkyVisualBackgroundView"

    const-string v8, "image count is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    move-object v6, v5

    .line 687
    goto :goto_b

    .line 673
    :cond_21
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 674
    .local v4, ranTargetData:I
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 676
    .local v2, img_path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2, p1, p2}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getOptimezedBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 679
    iget-object v8, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_42

    .line 680
    :try_start_38
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 681
    monitor-exit v8

    goto :goto_1f

    :catchall_3f
    move-exception v7

    monitor-exit v8
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v7
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    .line 683
    .end local v0           #dataCount:I
    .end local v2           #img_path:Ljava/lang/String;
    .end local v4           #ranTargetData:I
    :catch_42
    move-exception v1

    .line 684
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_b
.end method

.method private getUserFolderList()[Ljava/lang/String;
    .registers 10

    .prologue
    .line 429
    const/4 v8, 0x0

    .line 430
    .local v8, paths:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 434
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.pantech.apps.HoldSetting.VisualProvider/data/7"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    const-string v1, "_uri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_31

    move-result-object v8

    .line 441
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 444
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_30
    :goto_30
    return-object v8

    .line 438
    :catch_31
    move-exception v7

    .line 439
    .local v7, e:Ljava/lang/Exception;
    :try_start_32
    const-string v1, "SkyVisualBackgroundView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserFolderList()::Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_54

    .line 441
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_54
    move-exception v1

    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v1
.end method

.method private initValue()V
    .registers 12

    .prologue
    const/4 v10, 0x6

    const/4 v6, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x18

    const/4 v7, 0x0

    .line 316
    iget-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    if-eqz v4, :cond_11

    const-string v4, "SkyVisualBackgroundView"

    const-string v5, "initValue() called -- start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 321
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_8c

    .line 322
    iput-boolean v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mIsPortraitScreen:Z

    .line 324
    iput v10, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    .line 325
    iput v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    .line 327
    sget v4, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_LAND:I

    iput v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    .line 328
    sget v4, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_LAND:I

    iput v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    .line 339
    :goto_2b
    iget-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    if-eqz v4, :cond_49

    const-string v4, "SkyVisualBackgroundView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEachImage_width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_49
    iget-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    if-eqz v4, :cond_67

    const-string v4, "SkyVisualBackgroundView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEachImage_height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_67
    iget v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    iget v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    iput-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    .line 344
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7a
    iget v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    if-ge v1, v4, :cond_9f

    .line 345
    const/4 v2, 0x0

    .local v2, j:I
    :goto_7f
    iget v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    if-ge v2, v4, :cond_9c

    .line 346
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    aget-object v4, v4, v1

    aput-boolean v7, v4, v2

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 330
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_8c
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mIsPortraitScreen:Z

    .line 332
    iput v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mVerImageCount:I

    .line 333
    iput v10, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mHoriImageCount:I

    .line 335
    sget v4, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_WIDTH_PORT:I

    iput v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_width:I

    .line 336
    sget v4, Lcom/android/internal/widget/SkyVisualBackgroundView;->EACH_IMAGE_HEIGHT_PORT:I

    iput v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mEachImage_height:I

    goto :goto_2b

    .line 344
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 351
    .end local v2           #j:I
    :cond_9f
    new-array v4, v8, [Z

    iput-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_small:[Z

    .line 352
    const/4 v1, 0x0

    :goto_a4
    if-ge v1, v8, :cond_ad

    .line 353
    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_small:[Z

    aput-boolean v7, v4, v1

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 357
    :cond_ad
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 361
    .local v3, ran:Ljava/util/Random;
    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetBigImageCount:I

    .line 363
    const-string v4, "SkyVisualBackgroundView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Big Image Count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetBigImageCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iput v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedPlannerCount:I

    .line 366
    iput v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedBigImageCount:I

    .line 367
    iput v7, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSettedSmallImageCount:I

    .line 369
    new-array v4, v8, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    .line 370
    iget v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mTargetBigImageCount:I

    new-array v4, v4, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageArray:[Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    .line 375
    iget-boolean v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->Debug:Z

    if-eqz v4, :cond_fc

    const-string v4, "SkyVisualBackgroundView"

    const-string v5, "initValue() called -- end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_fc
    return-void
.end method


# virtual methods
.method public cleanView()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 236
    const-string v2, "SkyVisualBackgroundView"

    const-string v4, "cleanView() called"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mStopAnything:Z

    .line 242
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    .line 245
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    .line 248
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_34

    .line 249
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_34

    .line 250
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_31

    .line 251
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    .line 249
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 256
    .end local v0           #i:I
    :cond_34
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_small:[Landroid/graphics/Bitmap;

    .line 258
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_54

    .line 259
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3b
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_54

    .line 260
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_51

    .line 261
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    .line 259
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 266
    .end local v0           #i:I
    :cond_54
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mFinalBitmap_big:[Landroid/graphics/Bitmap;

    .line 269
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mPlannerIDArray:[I

    .line 271
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_59
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mBigImageIDArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_73

    .line 272
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mBigImageIDArray:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyVisualBackgroundView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkyVisualDissolveView;

    .line 273
    .local v1, ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    if-eqz v1, :cond_70

    .line 274
    invoke-virtual {v1}, Lcom/android/internal/widget/SkyVisualDissolveView;->cleanImage()V

    .line 275
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SkyVisualBackgroundView;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 271
    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 278
    .end local v1           #ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    :cond_73
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mBigImageIDArray:[I

    .line 280
    const/4 v0, 0x0

    :goto_76
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSmallImageIDArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_90

    .line 281
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSmallImageIDArray:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SkyVisualBackgroundView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkyVisualDissolveView;

    .line 282
    .restart local v1       #ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    if-eqz v1, :cond_8d

    .line 283
    invoke-virtual {v1}, Lcom/android/internal/widget/SkyVisualDissolveView;->cleanImage()V

    .line 284
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SkyVisualBackgroundView;->cleanupImageView(Landroid/widget/ImageView;)V

    .line 280
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 287
    .end local v1           #ranTargetView:Lcom/android/internal/widget/SkyVisualDissolveView;
    :cond_90
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mSmallImageIDArray:[I

    .line 289
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageArray:[Ljava/lang/Integer;

    .line 290
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mDefaultImageList:Ljava/util/ArrayList;

    move-object v2, v3

    .line 292
    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_big:[[Z

    .line 293
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mAcquireArea_small:[Z

    .line 296
    iput-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mUserImageList:Ljava/util/ArrayList;

    .line 299
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    if-eqz v2, :cond_a8

    .line 300
    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mCursorPlanner:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_a8
    return-void
.end method

.method public startAnimation()V
    .registers 3

    .prologue
    .line 756
    const-string v0, "SkyVisualBackgroundView"

    const-string v1, "startAnimation() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mNowAniLoop:Z

    if-eqz v0, :cond_13

    .line 759
    const-string v0, "SkyVisualBackgroundView"

    const-string v1, "already animation start..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_12
    return-void

    .line 762
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mNowAniLoop:Z

    .line 766
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12
.end method

.method public stopAnimation()V
    .registers 3

    .prologue
    .line 770
    const-string v0, "SkyVisualBackgroundView"

    const-string v1, "stopAnimation() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-boolean v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mNowAniLoop:Z

    if-nez v0, :cond_13

    .line 773
    const-string v0, "SkyVisualBackgroundView"

    const-string v1, "already animation stop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_12
    return-void

    .line 777
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mNowAniLoop:Z

    .line 780
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView;->mImageRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_12
.end method
