.class public Lcom/ss/android/socialbase/downloader/network/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/ss/android/socialbase/downloader/network/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/network/c;-><init>(Lcom/ss/android/socialbase/downloader/network/c$1;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/c$c;->a:Lcom/ss/android/socialbase/downloader/network/c;

    return-void
.end method

.method public static synthetic a()Lcom/ss/android/socialbase/downloader/network/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/c$c;->a:Lcom/ss/android/socialbase/downloader/network/c;

    return-object v0
.end method
