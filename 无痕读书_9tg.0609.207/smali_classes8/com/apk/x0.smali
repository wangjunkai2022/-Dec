.class public final Lcom/apk/x0;
.super Ljava/lang/Object;
.source "WebInfoHelper.java"

# interfaces
.implements Lcom/apk/vu;


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic if:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x0;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/apk/x0;->if:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "\u6ca1\u6709\u4fdd\u5b58\u6743\u9650\uff0c\u4fdd\u5b58\u529f\u80fd\u65e0\u6cd5\u4f7f\u7528\uff01"

    .line 1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public if(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/x0;->do:Landroid/app/Activity;

    iget-object p2, p0, Lcom/apk/x0;->if:Ljava/io/File;

    .line 2
    new-instance v0, Lcom/apk/yu;

    invoke-direct {v0, p1}, Lcom/apk/yu;-><init>(Landroid/app/Activity;)V

    .line 3
    sget-object v1, Lcom/apk/wu;->do:[Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/yu;->if([Ljava/lang/String;)Lcom/apk/yu;

    new-instance v1, Lcom/apk/rw;

    invoke-direct {v1, p1, p2}, Lcom/apk/rw;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/yu;->for(Lcom/apk/vu;)V

    return-void
.end method
