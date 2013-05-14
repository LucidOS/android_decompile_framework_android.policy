.class Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$1;
.super Ljava/lang/Object;
.source "SkyFOTAUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;->access$000(Lcom/android/internal/policy/impl/SkyFOTAUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 127
    return-void
.end method
