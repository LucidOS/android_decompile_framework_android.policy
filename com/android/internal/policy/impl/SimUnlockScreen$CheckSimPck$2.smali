.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;

.field final synthetic val$nRCnt:I

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;->val$result:Z

    iput p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;->val$nRCnt:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;->val$result:Z

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;->val$nRCnt:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->onSimLockPCKChangedResponse(ZI)V

    .line 442
    return-void
.end method
