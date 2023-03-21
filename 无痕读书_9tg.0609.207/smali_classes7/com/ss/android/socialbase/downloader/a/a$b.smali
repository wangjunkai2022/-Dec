.class public Lcom/ss/android/socialbase/downloader/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/ss/android/socialbase/downloader/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;-><init>(Lcom/ss/android/socialbase/downloader/a/a$1;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/a/a$b;->a:Lcom/ss/android/socialbase/downloader/a/a;

    return-void
.end method

.method public static synthetic a()Lcom/ss/android/socialbase/downloader/a/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/a/a$b;->a:Lcom/ss/android/socialbase/downloader/a/a;

    return-object v0
.end method
