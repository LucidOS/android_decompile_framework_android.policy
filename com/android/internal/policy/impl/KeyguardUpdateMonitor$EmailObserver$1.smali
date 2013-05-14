.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver$1;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->startObserve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryEmail()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1620
    return-void
.end method
