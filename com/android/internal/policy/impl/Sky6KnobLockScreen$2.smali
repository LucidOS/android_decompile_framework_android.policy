.class Lcom/android/internal/policy/impl/Sky6KnobLockScreen$2;
.super Ljava/lang/Object;
.source "Sky6KnobLockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$2;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 275
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 279
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/Sky6KnobLockScreen$2;->this$0:Lcom/android/internal/policy/impl/Sky6KnobLockScreen;

    #getter for: Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->mAlarmInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/Sky6KnobLockScreen;->access$100(Lcom/android/internal/policy/impl/Sky6KnobLockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x108029f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 285
    return-void
.end method
