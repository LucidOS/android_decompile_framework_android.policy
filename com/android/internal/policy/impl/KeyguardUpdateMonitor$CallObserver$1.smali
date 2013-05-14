.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver$1;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->startObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryCall()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1508
    return-void
.end method
