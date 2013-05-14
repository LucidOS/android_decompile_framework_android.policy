.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPck"
.end annotation


# instance fields
.field private final keyPck:[B

.field private final mPck:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "pck"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->mPck:Ljava/lang/String;

    .line 396
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->keyPck:[B

    .line 397
    return-void
.end method


# virtual methods
.method abstract onSimLockPCKChangedResponse(ZI)V
.end method

.method public run()V
    .registers 7

    .prologue
    .line 404
    const-string v3, "SimUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckSimPck - run() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->mPck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :try_start_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->mPck:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/telephony/TelephonyManager;->verifyPck(Ljava/lang/String;I)Z

    move-result v2

    .line 409
    .local v2, result:Z
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 412
    if-nez v2, :cond_35

    .line 413
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$110(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    .line 415
    :cond_35
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v1

    .line 416
    .local v1, nRCnt:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pck_retry_count"

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    :goto_4e
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 433
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPanHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;ZI)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    .end local v1           #nRCnt:I
    .end local v2           #result:Z
    :goto_64
    return-void

    .line 421
    .restart local v2       #result:Z
    :cond_65
    const/4 v1, 0x0

    .restart local v1       #nRCnt:I
    goto :goto_4e

    .line 439
    :cond_67
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v4, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;ZI)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_71} :catch_72

    goto :goto_64

    .line 446
    .end local v1           #nRCnt:I
    .end local v2           #result:Z
    :catch_72
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v4, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck$3;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_64
.end method
