.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailObserver"
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
    .line 1945
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1946
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    .line 1948
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    .line 1949
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1942
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    .line 1943
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->startQueryVoiceMail()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1993
    return-void
.end method

.method public startObserve()V
    .registers 5

    .prologue
    .line 1952
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "start VoiceMail Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 1955
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://vvm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1961
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;)V

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1970
    return-void
.end method

.method public stopObserve()V
    .registers 3

    .prologue
    .line 1973
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "stop VoiceMail Observer.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1978
    :cond_1c
    return-void
.end method

.method public update()V
    .registers 10

    .prologue
    .line 1996
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "update unread voice mail count"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v6, 0x0

    .line 2001
    .local v6, c:Landroid/database/Cursor;
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2002
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_1d

    .line 2003
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_70

    .line 2034
    if-eqz v6, :cond_1c

    .line 2035
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2036
    const/4 v6, 0x0

    .line 2039
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1c
    :goto_1c
    return-void

    .line 2007
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1d
    :try_start_1d
    const-string v2, "content://vvm"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2008
    .local v1, uriVoiceMail:Landroid/net/Uri;
    sget-object v2, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->VOICEMAIL_UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v3, "(( _size != 0 AND type = \'voice\' ) OR ( type != \'voice\' )) AND heard = 0 AND update_state = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2015
    if-eqz v6, :cond_69

    .line 2016
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I

    .line 2017
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set unread voice mail count...("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :goto_5c
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedVoiceMailRetryCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3902(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_62
    .catchall {:try_start_1d .. :try_end_62} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_62} :catch_70

    .line 2034
    if-eqz v6, :cond_1c

    .line 2035
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2036
    const/4 v6, 0x0

    goto :goto_1c

    .line 2020
    :cond_69
    :try_start_69
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUnreadVoiceMailCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)I
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_a4
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6f} :catch_70

    goto :goto_5c

    .line 2024
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uriVoiceMail:Landroid/net/Uri;
    :catch_70
    move-exception v7

    .line 2025
    .local v7, e:Ljava/lang/Exception;
    :try_start_71
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "error...fail to get unread voice mails..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2028
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x192

    const/16 v4, 0x704

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 2032
    .local v8, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMissedCommHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$VoiceMailObserver;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3904(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x1f4

    int-to-long v3, v3

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_9c
    .catchall {:try_start_71 .. :try_end_9c} :catchall_a4

    .line 2034
    if-eqz v6, :cond_1c

    .line 2035
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2036
    const/4 v6, 0x0

    goto/16 :goto_1c

    .line 2034
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #msg:Landroid/os/Message;
    :catchall_a4
    move-exception v2

    if-eqz v6, :cond_ab

    .line 2035
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2036
    const/4 v6, 0x0

    :cond_ab
    throw v2
.end method
