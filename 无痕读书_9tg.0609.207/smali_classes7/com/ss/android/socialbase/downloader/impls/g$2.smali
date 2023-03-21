.class public Lcom/ss/android/socialbase/downloader/impls/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apk/ng0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/xg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/ss/android/socialbase/downloader/impls/g;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/g$2;->c:Lcom/ss/android/socialbase/downloader/impls/g;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/g$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$2;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/g$2;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/apk/ng0;->do:Lcom/apk/ng0;

    check-cast v0, Lcom/apk/mg0;

    invoke-virtual {v0, p1}, Lcom/apk/mg0;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
