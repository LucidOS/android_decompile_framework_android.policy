.class Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;
.super Ljava/lang/Object;
.source "SkyGestureLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->onGesturePerformed(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

.field final synthetic val$intentUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iput-object p2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;->val$intentUri:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;->val$intentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 312
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/16 v4, 0x14f

    const/16 v5, 0x1e0

    const/16 v6, 0x1d4

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;->this$1:Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    #calls: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->goToUnlock(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$800(Lcom/android/internal/policy/impl/SkyGestureLockScreen;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_23} :catch_24

    .line 319
    .end local v1           #intent:Landroid/content/Intent;
    :goto_23
    return-void

    .line 315
    :catch_24
    move-exception v0

    .line 316
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "SkyGestureLockScreen"

    const-string v3, "Exception for launch app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_23
.end method
