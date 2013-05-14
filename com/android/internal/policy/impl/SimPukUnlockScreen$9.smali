.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$9;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPopup(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$9;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 942
    return-void
.end method
