.class public final synthetic Lcom/apk/xz;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00$goto;

.field public final synthetic for:Z

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/f00$goto;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/xz;->do:Lcom/apk/f00$goto;

    iput-object p2, p0, Lcom/apk/xz;->if:Ljava/util/List;

    iput-boolean p3, p0, Lcom/apk/xz;->for:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/xz;->do:Lcom/apk/f00$goto;

    iget-object v1, p0, Lcom/apk/xz;->if:Ljava/util/List;

    iget-boolean v2, p0, Lcom/apk/xz;->for:Z

    invoke-virtual {v0, v1, v2}, Lcom/apk/f00$goto;->do(Ljava/util/List;Z)V

    return-void
.end method
