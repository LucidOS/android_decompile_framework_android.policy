.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObserver"
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
    .line 1705
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1706
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    .line 1708
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    .line 1709
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1702
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    .line 1703
    return-void
.end method

.method private getSelectionQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "smsSelectionQuery"
    .parameter "mmsSelectionQuery"

    .prologue
    .line 1863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    .local v1, smsSelectBuff:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1865
    .local v0, mmsSelectBuff:Ljava/lang/StringBuilder;
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUnreadMMS()I
    .registers 11

    .prologue
    .line 1906
    const/4 v9, 0x0

    .line 1907
    .local v9, unreadCounter:I
    const/4 v6, 0x0

    .line 1910
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1911
    .local v1, uriMMS:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1912
    if-eqz v6, :cond_1d

    .line 1913
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1916
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_2a

    .line 1927
    if-eqz v6, :cond_29

    .line 1928
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1929
    const/4 v6, 0x0

    .line 1933
    .end local v1           #uriMMS:Landroid/net/Uri;
    :cond_29
    :goto_29
    return v9

    .line 1917
    :catch_2a
    move-exception v7

    .line 1918
    .local v7, e:Ljava/lang/Exception;
    :try_start_2b
    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "Failed to getUnreadSMSandMMS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1921
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x192

    const/16 v3, 0x702

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1925
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3604(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_5d

    .line 1927
    if-eqz v6, :cond_29

    .line 1928
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1929
    const/4 v6, 0x0

    goto :goto_29

    .line 1927
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_5d
    move-exception v0

    if-eqz v6, :cond_64

    .line 1928
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1929
    const/4 v6, 0x0

    :cond_64
    throw v0
.end method

.method private getUnreadSMS()I
    .registers 11

    .prologue
    .line 1875
    const/4 v9, 0x0

    .line 1876
    .local v9, unreadCounter:I
    const/4 v6, 0x0

    .line 1879
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1880
    .local v1, uriSMS:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1881
    if-eqz v6, :cond_1d

    .line 1882
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1885
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_2a

    .line 1896
    if-eqz v6, :cond_29

    .line 1897
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1898
    const/4 v6, 0x0

    .line 1902
    .end local v1           #uriSMS:Landroid/net/Uri;
    :cond_29
    :goto_29
    return v9

    .line 1886
    :catch_2a
    move-exception v7

    .line 1887
    .local v7, e:Ljava/lang/Exception;
    :try_start_2b
    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "Failed to getUnreadSMSandMMS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1890
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x192

    const/16 v3, 0x702

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1894
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3604(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_5d

    .line 1896
    if-eqz v6, :cond_29

    .line 1897
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1898
    const/4 v6, 0x0

    goto :goto_29

    .line 1896
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_5d
    move-exception v0

    if-eqz v6, :cond_64

    .line 1897
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1898
    const/4 v6, 0x0

    :cond_64
    throw v0
.end method

.method private getUnreadSMSandMMS()I
    .registers 11

    .prologue
    .line 1782
    const/4 v9, 0x0

    .line 1783
    .local v9, unreadCounter:I
    const/4 v6, 0x0

    .line 1786
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    sget-object v0, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->SMS_UNREAD_URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1787
    .local v1, uriSMSMMS:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1789
    if-eqz v6, :cond_20

    .line 1790
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1791
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1794
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_2d

    .line 1805
    if-eqz v6, :cond_2c

    .line 1806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1807
    const/4 v6, 0x0

    .line 1811
    .end local v1           #uriSMSMMS:Landroid/net/Uri;
    :cond_2c
    :goto_2c
    return v9

    .line 1795
    :catch_2d
    move-exception v7

    .line 1796
    .local v7, e:Ljava/lang/Exception;
    :try_start_2e
    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "Failed to getUnreadSMSandMMS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1799
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x192

    const/16 v3, 0x702

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 1803
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3604(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_59
    .catchall {:try_start_2e .. :try_end_59} :catchall_60

    .line 1805
    if-eqz v6, :cond_2c

    .line 1806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1807
    const/4 v6, 0x0

    goto :goto_2c

    .line 1805
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_60
    move-exception v0

    if-eqz v6, :cond_67

    .line 1806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1807
    const/4 v6, 0x0

    :cond_67
    throw v0
.end method

.method private getUnreadSMSandMMS_VZW()I
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 1816
    const/4 v11, 0x0

    .line 1818
    .local v11, unreadCounter:I
    const/4 v6, 0x0

    .line 1819
    .local v6, c:Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1820
    .local v10, smsSelectBuff:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1821
    .local v8, mmsSelectBuff:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1825
    .local v3, where:Ljava/lang/String;
    const-string v0, "type = 1 and read = 0"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    const-string v0, "msg_box = 1 and read = 0 and m_type != 134"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->getSelectionQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1830
    const-string v0, "content://mms-sms/messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1831
    .local v1, uriSMSMMS:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 1834
    .local v2, msgProjection:[Ljava/lang/String;
    :try_start_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1836
    if-eqz v6, :cond_46

    .line 1837
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1838
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1841
    :cond_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedMsgRetryCount:I
    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3602(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_4c
    .catchall {:try_start_31 .. :try_end_4c} :catchall_86
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4c} :catch_53

    .line 1852
    if-eqz v6, :cond_52

    .line 1853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1854
    const/4 v6, 0x0

    .line 1857
    :cond_52
    :goto_52
    return v11

    .line 1842
    :catch_53
    move-exception v7

    .line 1843
    .local v7, e:Ljava/lang/Exception;
    :try_start_54
    const-string v0, "KeyguardUpdateMonitor"

    const-string v4, "Failed to getUnreadSMSandMMS_VZW"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1846
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x192

    const/16 v5, 0x702

    const/4 v12, 0x0

    invoke-virtual {v0, v4, v5, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    .line 1850
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3604(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1f4

    int-to-long v4, v4

    invoke-virtual {v0, v9, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7f
    .catchall {:try_start_54 .. :try_end_7f} :catchall_86

    .line 1852
    if-eqz v6, :cond_52

    .line 1853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1854
    const/4 v6, 0x0

    goto :goto_52

    .line 1852
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #msg:Landroid/os/Message;
    :catchall_86
    move-exception v0

    if-eqz v6, :cond_8d

    .line 1853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1854
    const/4 v6, 0x0

    :cond_8d
    throw v0
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryMessage()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1761
    return-void
.end method

.method public startObserve()V
    .registers 5

    .prologue
    .line 1712
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "start SMS Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 1735
    :goto_b
    return-void

    .line 1718
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->SMS_UNREAD_URI:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1723
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;)V

    const-wide/16 v2, 0x834

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public stopObserve()V
    .registers 3

    .prologue
    .line 1738
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stop SMS Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1741
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1743
    :cond_1c
    return-void
.end method

.method public update()V
    .registers 5

    .prologue
    .line 1764
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "update unread SMS count"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v0

    .line 1768
    .local v0, operatorId:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3c

    .line 1771
    :cond_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->getUnreadSMSandMMS()I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 1778
    :goto_1d
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unread SMS count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1772
    :cond_3c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4a

    .line 1773
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->getUnreadSMSandMMS_VZW()I

    move-result v2

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    goto :goto_1d

    .line 1775
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->getUnreadSMS()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MessageObserver;->getUnreadMMS()I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadMsgCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    goto :goto_1d
.end method
