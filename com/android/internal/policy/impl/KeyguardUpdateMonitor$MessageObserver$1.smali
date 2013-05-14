.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver$1;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->startObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryMessage()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1733
    return-void
.end method
