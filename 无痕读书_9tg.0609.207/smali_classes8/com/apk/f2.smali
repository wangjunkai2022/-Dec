.class public final Lcom/apk/f2;
.super Ljava/lang/Object;
.source "BookReadModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f2;->do:Ljava/lang/String;

    iput p2, p0, Lcom/apk/f2;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Lcom/biquge/ebook/app/bean/ReadPostion;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bookId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/apk/f2;->do:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/bean/ReadPostion;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/ReadPostion;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/apk/f2;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/ReadPostion;->setBookId(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/apk/f2;->if:I

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/ReadPostion;->setReadPostion(I)V

    .line 5
    invoke-virtual {v0}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
