.class public Lcom/ss/android/socialbase/downloader/network/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/ss/android/socialbase/downloader/network/c$a;

.field public final synthetic c:J

.field public final synthetic d:Lcom/ss/android/socialbase/downloader/network/c;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/network/c;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->d:Lcom/ss/android/socialbase/downloader/network/c;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->b:Lcom/ss/android/socialbase/downloader/network/c$a;

    iput-wide p4, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->d:Lcom/ss/android/socialbase/downloader/network/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->b:Lcom/ss/android/socialbase/downloader/network/c$a;

    iget-wide v3, p0, Lcom/ss/android/socialbase/downloader/network/c$1;->c:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/network/c;->a(Lcom/ss/android/socialbase/downloader/network/c;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/c$a;J)V

    return-void
.end method
