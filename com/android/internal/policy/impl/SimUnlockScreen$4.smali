.class Lcom/android/internal/policy/impl/SimUnlockScreen$4;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(I)V
    .registers 4
    .parameter "result"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$4$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$4;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 637
    return-void
.end method
