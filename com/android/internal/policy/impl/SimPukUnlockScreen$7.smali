.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;
.super Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(I)V
    .registers 4
    .parameter "result"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$7$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$7;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 683
    return-void
.end method
