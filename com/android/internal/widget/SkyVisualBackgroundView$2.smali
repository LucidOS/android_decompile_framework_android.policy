.class Lcom/android/internal/widget/SkyVisualBackgroundView$2;
.super Ljava/lang/Object;
.source "SkyVisualBackgroundView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SkyVisualBackgroundView;->createUserData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SkyVisualBackgroundView;

.field final synthetic val$userImageDirPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SkyVisualBackgroundView;[Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$2;->this$0:Lcom/android/internal/widget/SkyVisualBackgroundView;

    iput-object p2, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$2;->val$userImageDirPaths:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 387
    const-string v1, "SkyVisualBackgroundView"

    const-string v2, "create user data (used ThreadPoolExecutor)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$2;->val$userImageDirPaths:[Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 389
    const-string v1, "SkyVisualBackgroundView"

    const-string v2, "start get user data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$2;->val$userImageDirPaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 392
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$2;->this$0:Lcom/android/internal/widget/SkyVisualBackgroundView;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualBackgroundView$2;->val$userImageDirPaths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/internal/widget/SkyVisualBackgroundView;->getImageList(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/internal/widget/SkyVisualBackgroundView;->access$100(Lcom/android/internal/widget/SkyVisualBackgroundView;Ljava/io/File;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 394
    :cond_29
    const-string v1, "SkyVisualBackgroundView"

    const-string v2, "end get user data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0           #i:I
    :cond_30
    return-void
.end method
