.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDataReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2298
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 2301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2304
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2309
    const/16 v2, 0x701

    const-string v3, "package"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getMissedSchemeURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2311
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2312
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mCallObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4000(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->onChange(Z)V

    .line 2337
    .end local v1           #packageName:Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 2316
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_35
    const/16 v2, 0x702

    const-string v3, "package"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getMissedSchemeURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2318
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2319
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMessageObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->onChange(Z)V

    goto :goto_34

    .line 2323
    :cond_5d
    const/16 v2, 0x703

    const-string v3, "package"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getMissedSchemeURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2325
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2326
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mEmailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->onChange(Z)V

    goto :goto_34

    .line 2330
    :cond_85
    const/16 v2, 0x704

    const-string v3, "package"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getMissedSchemeURI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2332
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2333
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PackageDataReceiver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mVoiceMailObserver:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$4300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->onChange(Z)V

    goto :goto_34
.end method
