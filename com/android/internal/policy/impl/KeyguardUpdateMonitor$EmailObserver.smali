.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailObserver"
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
    .line 1594
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1595
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    .line 1597
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    .line 1598
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1591
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    .line 1592
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryEmail()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1648
    return-void
.end method

.method public startObserve()V
    .registers 5

    .prologue
    .line 1601
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "start Email Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 1604
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.email.provider/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1610
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;)V

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1622
    return-void
.end method

.method public stopObserve()V
    .registers 3

    .prologue
    .line 1625
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stop Email Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1628
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1630
    :cond_1c
    return-void
.end method

.method public update()V
    .registers 11

    .prologue
    .line 1651
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "update unread email count"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v6, 0x0

    .line 1656
    .local v6, c:Landroid/database/Cursor;
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1657
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_1d

    .line 1658
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_81

    .line 1690
    if-eqz v6, :cond_1c

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1692
    const/4 v6, 0x0

    .line 1695
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1c
    :goto_1c
    return-void

    .line 1662
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1d
    :try_start_1d
    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->MAILBOX_SUM_OF_UNREAD_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type == ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1669
    if-eqz v6, :cond_7a

    .line 1670
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1671
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 1672
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set unread email count...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_6d
    :goto_6d
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedEmailRetryCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3302(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_73} :catch_81

    .line 1690
    if-eqz v6, :cond_1c

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1692
    const/4 v6, 0x0

    goto :goto_1c

    .line 1676
    :cond_7a
    :try_start_7a
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadEmailCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_80} :catch_81

    goto :goto_6d

    .line 1680
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_81
    move-exception v7

    .line 1681
    .local v7, e:Ljava/lang/Exception;
    :try_start_82
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "error...fail to get unread emails..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1684
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x192

    const/16 v3, 0x703

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1688
    .local v8, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EmailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3304(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_ad
    .catchall {:try_start_82 .. :try_end_ad} :catchall_b5

    .line 1690
    if-eqz v6, :cond_1c

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1692
    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 1690
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_b5
    move-exception v1

    if-eqz v6, :cond_bc

    .line 1691
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1692
    const/4 v6, 0x0

    :cond_bc
    throw v1
.end method
