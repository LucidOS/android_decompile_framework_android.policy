.class Lcom/android/internal/widget/SKYBGPControlView$2;
.super Landroid/content/BroadcastReceiver;
.source "SKYBGPControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SKYBGPControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SKYBGPControlView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SKYBGPControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/widget/SKYBGPControlView$2;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 134
    const-string v1, "SKYBGPControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() intent.getAction() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_1c
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 138
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$2;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    :cond_33
    :goto_33
    return-void

    .line 140
    :cond_34
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 141
    iget-object v1, p0, Lcom/android/internal/widget/SKYBGPControlView$2;->this$0:Lcom/android/internal/widget/SKYBGPControlView;

    #getter for: Lcom/android/internal/widget/SKYBGPControlView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SKYBGPControlView;->access$400(Lcom/android/internal/widget/SKYBGPControlView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4b} :catch_4c

    goto :goto_33

    .line 143
    :catch_4c
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SKYBGPControlView"

    const-string v2, "mHandler Not Ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method
