.class public Lcom/ss/android/socialbase/downloader/impls/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/f;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/apk/ch0;

.field public final synthetic b:Lcom/apk/zf0;

.field public final synthetic c:Lcom/ss/android/socialbase/downloader/impls/f;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/f;Lcom/apk/ch0;Lcom/apk/zf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->c:Lcom/ss/android/socialbase/downloader/impls/f;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->a:Lcom/apk/ch0;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lcom/apk/zf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->a:Lcom/apk/ch0;

    invoke-virtual {v0, p1}, Lcom/apk/ch0;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->a:Lcom/apk/ch0;

    .line 2
    iget v0, v0, Lcom/apk/ch0;->try:I

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lcom/apk/zf0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apk/zf0;->break()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$1;->b:Lcom/apk/zf0;

    invoke-interface {v0}, Lcom/apk/zf0;->cancel()V

    :cond_0
    return-void
.end method
