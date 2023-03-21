.class public final synthetic Lcom/apk/tz;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00$if;

.field public final synthetic for:Z

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/f00$if;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/tz;->do:Lcom/apk/f00$if;

    iput-object p2, p0, Lcom/apk/tz;->if:Ljava/util/List;

    iput-boolean p3, p0, Lcom/apk/tz;->for:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/tz;->do:Lcom/apk/f00$if;

    iget-object v1, p0, Lcom/apk/tz;->if:Ljava/util/List;

    iget-boolean v2, p0, Lcom/apk/tz;->for:Z

    invoke-virtual {v0, v1, v2}, Lcom/apk/f00$if;->do(Ljava/util/List;Z)V

    return-void
.end method
