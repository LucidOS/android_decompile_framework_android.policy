.class Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;
.super Ljava/lang/Object;
.source "SkyGestureLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SkyGestureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesturePerformed(Lcom/android/internal/widget/SkyGestureOverlayView;Landroid/gesture/Gesture;)V
    .registers 13
    .parameter "overlay"
    .parameter "gesture"

    .prologue
    const-wide/16 v8, 0x1f4

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    .line 239
    new-instance v1, Lcom/pantech/providers/skysettings/SKYGestures;

    invoke-direct {v1}, Lcom/pantech/providers/skysettings/SKYGestures;-><init>()V

    .line 240
    .local v1, gestureLibrary:Lcom/pantech/providers/skysettings/SKYGestures;
    invoke-virtual {v1}, Lcom/pantech/providers/skysettings/SKYGestures;->load()V

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, p2}, Lcom/pantech/providers/skysettings/SKYGestures;->getSimilarSKYGestureInfo(Landroid/content/Context;Landroid/gesture/Gesture;)Lcom/pantech/providers/skysettings/SKYGestureInfo;

    move-result-object v2

    .line 245
    .local v2, info:Lcom/pantech/providers/skysettings/SKYGestureInfo;
    if-nez v2, :cond_5d

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #calls: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->playGestureErrorSound()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$000(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)V

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    new-instance v5, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;)V

    #setter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR1:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$102(Lcom/android/internal/policy/impl/SkyGestureLockScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 255
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    new-instance v5, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$2;-><init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;)V

    #setter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR2:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$302(Lcom/android/internal/policy/impl/SkyGestureLockScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 262
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$200(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 263
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$200(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR1:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$100(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$200(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR2:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$300(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0xdac

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :cond_5c
    :goto_5c
    return-void

    .line 273
    :cond_5d
    new-instance v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$3;-><init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;)V

    .line 282
    .local v0, enableRun:Ljava/lang/Runnable;
    iget v4, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mType:I

    if-nez v4, :cond_87

    .line 283
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$400(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Lcom/android/internal/widget/SkyGestureOverlayView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->setEnabled(Z)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mEnableHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$500(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$700(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$4;-><init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5c

    .line 297
    :cond_87
    iget-object v4, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    if-eqz v4, :cond_5c

    iget-object v4, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 302
    iget-object v4, v2, Lcom/pantech/providers/skysettings/SKYGestureInfo;->mIntentURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, intentUri:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$400(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Lcom/android/internal/widget/SkyGestureOverlayView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->setEnabled(Z)V

    .line 306
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mEnableHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$500(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyGestureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->access$700(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;

    invoke-direct {v5, p0, v3}, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1$5;-><init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5c
.end method
