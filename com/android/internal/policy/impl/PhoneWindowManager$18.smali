.class Lcom/android/internal/policy/impl/PhoneWindowManager$18;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 4636
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4639
    .local v0, action:Ljava/lang/String;
    const-string v2, "qualcomm.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4640
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4641
    .local v1, state:I
    if-ne v1, v3, :cond_20

    .line 4642
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 4646
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 4648
    .end local v1           #state:I
    :cond_1f
    return-void

    .line 4644
    .restart local v1       #state:I
    :cond_20
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    goto :goto_1a
.end method
