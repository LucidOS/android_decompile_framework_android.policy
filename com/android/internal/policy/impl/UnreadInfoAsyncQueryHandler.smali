.class public final Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "UnreadInfoAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->setQueryListener(Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;

    .line 64
    .local v0, listener:Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_e

    .line 65
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 69
    :cond_d
    :goto_d
    return-void

    .line 66
    :cond_e
    if-eqz p3, :cond_d

    .line 67
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_d
.end method

.method public setQueryListener(Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler$AsyncQueryListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnreadInfoAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method
