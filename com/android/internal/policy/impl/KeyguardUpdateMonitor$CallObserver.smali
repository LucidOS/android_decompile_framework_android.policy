.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1483
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    .line 1485
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    .line 1486
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1479
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    .line 1480
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryCall()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1535
    return-void
.end method

.method public startObserve()V
    .registers 5

    .prologue
    .line 1489
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "start Call Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 1492
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1498
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1510
    return-void
.end method

.method public stopObserve()V
    .registers 3

    .prologue
    .line 1513
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stop Call Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1516
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1518
    :cond_1c
    return-void
.end method

.method public update()V
    .registers 11

    .prologue
    .line 1538
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "update missed call count"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1542
    const-string v1, " AND new=1"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    const/4 v6, 0x0

    .line 1548
    .local v6, c:Landroid/database/Cursor;
    :try_start_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1550
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_2d

    .line 1551
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_b3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_7f

    .line 1579
    if-eqz v6, :cond_2c

    .line 1580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v6, 0x0

    .line 1584
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2c
    :goto_2c
    return-void

    .line 1555
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_2d
    :try_start_2d
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1560
    if-eqz v6, :cond_78

    .line 1561
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 1562
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set missed call count...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :goto_6b
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallRetryCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_71
    .catchall {:try_start_2d .. :try_end_71} :catchall_b3
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_71} :catch_7f

    .line 1579
    if-eqz v6, :cond_2c

    .line 1580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v6, 0x0

    goto :goto_2c

    .line 1565
    :cond_78
    :try_start_78
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCallCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_b3
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_7f

    goto :goto_6b

    .line 1569
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_7f
    move-exception v7

    .line 1570
    .local v7, e:Ljava/lang/Exception;
    :try_start_80
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Failed to get Missed Call Counter. Retry."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1573
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x192

    const/16 v3, 0x701

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1577
    .local v8, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$CallObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3004(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_ab
    .catchall {:try_start_80 .. :try_end_ab} :catchall_b3

    .line 1579
    if-eqz v6, :cond_2c

    .line 1580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v6, 0x0

    goto/16 :goto_2c

    .line 1579
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_b3
    move-exception v1

    if-eqz v6, :cond_ba

    .line 1580
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1581
    const/4 v6, 0x0

    :cond_ba
    throw v1
.end method
