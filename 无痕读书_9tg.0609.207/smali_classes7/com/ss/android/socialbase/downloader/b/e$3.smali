.class public Lcom/ss/android/socialbase/downloader/b/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/b/e;->update(ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ContentValues;

.field public final synthetic c:Lcom/ss/android/socialbase/downloader/b/e;


# direct methods
.method public constructor <init>(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/b/e$3;->c:Lcom/ss/android/socialbase/downloader/b/e;

    iput p2, p0, Lcom/ss/android/socialbase/downloader/b/e$3;->a:I

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/b/e$3;->b:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/b/e$3;->c:Lcom/ss/android/socialbase/downloader/b/e;

    iget v1, p0, Lcom/ss/android/socialbase/downloader/b/e$3;->a:I

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/b/e$3;->b:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/b/e;->a(Lcom/ss/android/socialbase/downloader/b/e;ILandroid/content/ContentValues;)V

    return-void
.end method
